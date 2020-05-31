mcencoder.vhd is the top level module.
FIFO.vhd is the FIFO module for input stage.
outputmachine.vhd is for output stage.
The two files are 2 tests that I have simulated, each has a testbench file and 5 waveform capscreens inside.  


----File : 2 sentences test

I have tested my implementation for a condition of 2 sentences.
The first sentence is A C B D E F F space F fullstop
The second sentence is F C B fullstop
The pupose of the test is to show that it can deal with consecutive sentences 


2 sentences.PNG : 
	complete and overall waveform

2 sentences with characters.PNG : 
	waveform with characters indicated

2 sentences a.PNG : 
	first detailed part of the waveform, showing A C B D E of first sentence

2 sentences b.PNG :
	sencond detailed part of the waveform, showing F F space F fullstop of first sentence

2 sentences c.PNG :
	third detailed part of the waveform, showing F C B fullstop from second sentence.

--------------------------------------------------------------------------------------------------------------

-----File : clr test
This test is to show the clr button is functioning.
the same input of as the 2 sentences test are used, except a clr is raised when C is entered in to the FIFO
and another is raised when the last F is expected to be shown.
That is, input stage:  A   C   B   D   E   F   F   space   F   fullstop
                          clr
         output stage: B   D   E   F   F   space   F   fullstop
                                                   clr
As a result, only  B   D   E   F   F   space are shown on screen.

clr test.PNG :
	a overall pic.

clr test with character.PNG :
	waveform with character indicated

clr test inputstage.PNG :
	show first clr, so that the first outputted char is B but not A

clr test outputstage.PNG :
	show second clr, so that after space there is no ouput seen

