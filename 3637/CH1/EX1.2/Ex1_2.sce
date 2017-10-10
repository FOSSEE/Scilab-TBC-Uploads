//Example 2 Page No:1.83
//given
sr=0.000001;//volt/sec
freq1=100000;//hz
vsat=12;//volt
baw=100000;//hz
//determine vx

vx=2*(1/(sr*2*3.14*freq1));
format(6);
disp('maximum peak amplitude at 100khz = '+string(vx)+" volt");
