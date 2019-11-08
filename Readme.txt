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
-> the two case studies 				(Section 4.1 & 4.2)	(Experiment 1-6)
-> verifying distributed protocols 		(Section 5.1)		(Experiment 7-8)
-> frontends, techniques and utilities 	(Section 3.1)		(Experiment 1-12)
-> certificates 						(Section 3.2)		(Experiment 1-12)
-> proof race 							(Section 3.3)		(Experiment 10-11)

Check the License.txt for license information.

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

Thank you, and please let the authors know in the case of any difficulty.
