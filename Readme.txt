--------------------------------------------------------------------------
Artifact for the paper submission - AVR: Abstractly Verifying Reachability
--------------------------------------------------------------------------

--------------------------------------------------------------------------
Resource requirements:
--------------------------------------------------------------------------
- 4 to 8 cores (for good parallel performance)
- 4GB ram should be more than enough
- less than 15 minutes for complete evaluation

--------------------------------------------------------------------------
Description
--------------------------------------------------------------------------
The artifact evaluates the tool AVR presented in the paper.

The artifact consists of a total of 12 experiments that can be executed one 
by one to evaluate the different aspects of the tool AVR and support the 
paper contents.

The set of experiments in the artifact attempts towards a thorough evaluation 
of the key concepts presented in the paper.

Includes experimental evaluation of :
-> the two case studies                 (Section 4.1 & 4.2) (Experiment 1-6)
-> verifying distributed protocols      (Section 5.1)       (Experiment 7-8)
-> frontends, techniques and utilities  (Section 3.1)       (Experiment 1-12)
-> certificates                         (Section 3.2)       (Experiment 1-12)
-> proof race                           (Section 3.3)       (Experiment 10-11)

For details on what each experiment is trying to evaluate, 
refer to the Detailed description section in this file at the end.

The tool is available on github - https://github.com/aman-goel/avr
The artifact is maintained on github - https://github.com/aman-goel/tacas20ae

--------------------------------------------------------------------------
How to run
--------------------------------------------------------------------------
Install packages in the packages folder i.e.
sudo dpkg -i packages/*.deb

Run the script "run.sh" in the avr folder i.e.
cd avr
./run.sh

All results and detailed logs are produced in avr/output/* folder.

The script run.sh goes through each experiment interactively, and prints further details
on what part of the paper is the experiment trying to evaluate.
You need to press enter before and after running each experiment (as displayed by run.sh).

The file avr/expected_results.zip contains the expected log of running run.sh 
(generated on TACAS 2020 VM).

--------------------------------------------------------------------------
Detailed description (of each experiment)
--------------------------------------------------------------------------
Experiment 1-
  evaluates: 
    first case study (part 1)              (Section 4.1) 
    VMT frontend                           (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Experiment 2-
  evaluates: 
    first case study (part 1)              (Section 4.1) 
    VMT frontend                           (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using z3        (Section 3.2)

Experiment 3-
  evaluates: 
    first case study (part 2)              (Section 4.1) 
    VMT frontend                           (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Experiment 4-
  evaluates: 
    first case study (part 2)              (Section 4.1) 
    VMT frontend                           (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using mathsat   (Section 3.2)

Experiment 5-
  evaluates: 
    second case study                      (Section 4.2) 
    BTOR2 frontend                         (Section 3) 
    counterexample traces                  (Section 3.2)
    verifying certificates using BtorSIM   (Section 3.2)

Experiment 6-
  evaluates: 
    second case study                      (Section 4.2) 
    BTOR2 frontend                         (Section 3) 
    counterexample traces                  (Section 3.2)
    verifying certificates using BtorSIM   (Section 3.2)

Experiment 7-
  evaluates: 
    verifying distributed protocols        (Section 5.1) 
    BTOR2 frontend                         (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Experiment 8-
  evaluates: 
    verifying distributed protocols        (Section 5.1) 
    BTOR2 frontend                         (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Experiment 9-
  evaluates: 
    Verilog frontend                       (Section 3) 

Experiment 10-
  evaluates: 
    different techniques and add-ons       (Section 3.1) 
    Verilog frontend                       (Section 3) 
    proof race                             (Section 3.3)
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Experiment 11-
  evaluates: 
    different techniques and add-ons       (Section 3.1) 
    Verilog frontend                       (Section 3) 
    proof race                             (Section 3.3)
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Experiment 12-
  evaluates: 
    utilities                              (Section 3.1) 
    Verilog frontend                       (Section 3) 
    proof certificates                     (Section 3.2)
    verifying certificates using yices2    (Section 3.2)

Thank you, and please let the authors know in the case of any difficulty.
