//Chapter 9 Ex 16

clc;
close;
clear;
x=poly(0,'x');
inc=(8/100);
SP1=x;
CP=(9/10)*SP1;
SP2=(1+inc)*SP1;
gain=SP2-CP;
gainper=(gain/CP)*100;
mprintf("The gain percentage of Monika is");
disp(gainper)
mprintf("percent");
