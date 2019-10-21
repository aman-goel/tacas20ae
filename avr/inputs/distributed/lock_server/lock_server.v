`define NUM_CLIENT 2
`define CLIENT_TYPE  [(`NUM_CLIENT - 1):0]

`define SHORT_WIDTH 1						// should be sufficient to express NUM_CLIENT
`define SHORT_TYPE   [(`SHORT_WIDTH - 1):0]

`define TRUE  1'd1
`define FALSE 1'd0

module client_server(clk, connect_client, disconnect_client);
	input clk;
	
	input `SHORT_TYPE connect_client;
	input `SHORT_TYPE disconnect_client;
	
	reg semaphore;
	reg link       `CLIENT_TYPE;
	
	initial
	begin
		semaphore = `TRUE;
		link[0]   = `FALSE;
		link[1]   = `FALSE;
	end
	
	always @ (posedge clk)
	begin
		// connect
		if (semaphore)
		begin
			semaphore <= `FALSE;
			link[connect_client] <= `TRUE;
		end
		
		// disconnect
		if (link[disconnect_client])
		begin
			semaphore <= `TRUE;
			link[disconnect_client] <= `FALSE;
		end
	end
	
	wire prop =
		!(link[0] && link[1]);
	
	wire prop_neg = !prop;
	assert property ( prop );
	
endmodule
