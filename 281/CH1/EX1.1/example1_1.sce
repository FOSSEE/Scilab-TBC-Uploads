disp('chapter 1 ex1.1')
disp('given')
disp("input signal=1v")// input signal is 1v
disp("V0=Vi-(Vi/M)")//formula to find o/p voltage
Vi=1
M=200000//Minimum Open loop gain is 50000, Typical M is 200000
V0=Vi-(Vi/M)
disp('output voltage for typical open loop gain of 200000 is')
disp('volt',V0)
M1=50000//Minimum open loop gain
V01=Vi-(Vi/M1)//output for minimum open loop gain
disp('output voltge for minimum open loop gain of 50000 is')
disp('volt',V01)