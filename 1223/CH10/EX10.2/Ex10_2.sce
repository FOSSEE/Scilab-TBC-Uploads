clear;
clc;
//Example 10.2
V1=5;
V2=-5;
R1=9.3;
b=50;
Vbe=0.7;
Va=80;
Iref=(V1-Vbe-V2)/R1;
printf('\nreference current =%.3fmA\n',Iref)
Io=Iref/(1+2/b);
printf('\noutput current=%.2fmA\n',Io)
ro=Va/Io;
printf('\nsmall signal output resistance=%.2f KOhm\n',ro)
//dIo=dVce2/ro
Vce2=0.7;
dIo=(V1-Vce2)/ro;
printf('\nchange in load current=%.3f mA\n',dIo)
x=dIo/Io;
x=x*100;
printf('\npercent change in output current=%.2f \n',x)
