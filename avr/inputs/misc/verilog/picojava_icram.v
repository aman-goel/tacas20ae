/****************************************************************
 ---------------------------------------------------------------
     Copyright 1999 Sun Microsystems, Inc., 901 San Antonio
     Road, Palo Alto, CA 94303, U.S.A.  All Rights Reserved.
     The contents of this file are subject to the current
     version of the Sun Community Source License, picoJava-II
     Core ("the License").  You may not use this file except
     in compliance with the License.  You may obtain a copy
     of the License by searching for "Sun Community Source
     License" on the World Wide Web at http://www.sun.com.
     See the License for the rights, obligations, and
     limitations governing use of the contents of this file.

     Sun, Sun Microsystems, the Sun logo, and all Sun-based
     trademarks and logos, Java, picoJava, and all Java-based
     trademarks and logos are trademarks or registered trademarks 
     of Sun Microsystems, Inc. in the United States and other
     countries.
 ----------------------------------------------------------------
******************************************************************/




//`include        "defines.h"

`define	ic_size	511
`define	ic_msb	8

// RAM  MODULE
module main (
        adr,
        do,
        di,
        we,
        enable,
        clk
        );
 
        input [`ic_msb-3:0] adr ;
        input [31:0] di ;
        input [1:0] we ;
        input clk ;
        input enable;
        output[63:0] do;

        // ram instantiated
        reg [7:0] ic_ram [`ic_size:0] ;
 
        // Derive an active low WE pulse
        wire low_we_, upper_we_;
        wire unknown_adr;


        assign low_we_ = ~(we[0]&enable&~clk);
        assign upper_we_ = ~(we[1]&enable&~clk);
        assign unknown_adr = (^adr === 1'bx);
 
   
	reg  old_we_1;
        reg  old_we_0;
	reg [31:0] old_di;
	reg [`ic_msb-3:0] old_adr;

	reg init_state;

	initial init_state = 1;

        // Write Dcache

       always @(posedge clk) 
	begin
	
	old_we_1 = upper_we_;
	old_we_0 = low_we_;
	old_di = di;
	old_adr = adr;
	init_state = 0;
	
	if (upper_we_) 
		begin
		ic_ram[{adr,3'b000}] = di[31:24] ;
                ic_ram[{adr,3'b001}] = di[23:16] ;
                ic_ram[{adr,3'b010}] = di[15:8] ;
                ic_ram[{adr,3'b011}] = di[7:0] ;
	end
	else 
		if (low_we_)	 begin
		ic_ram[{adr,3'b100}] = di[31:24] ;
                ic_ram[{adr,3'b101}] = di[23:16] ;
                ic_ram[{adr,3'b110}] = di[15:8] ;
                ic_ram[{adr,3'b111}] = di[7:0] ;
	end
	end

wire prop = (init_state | (~init_state & ((old_we_1 & (ic_ram[{old_adr,3'b001}] == old_di[23:16])) | ~old_we_1)));
wire prop_neg = !prop;
assert property ( prop );

endmodule
