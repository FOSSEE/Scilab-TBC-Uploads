//example 10.7//
clc
//clears the screen//
clear
//clears all existing variables//
t=2^12-1;
//cycles of clock input//
ctp=1;
//conversion time period (in micro sec)//
mct=t*ctp/1000;
//maximum conversion time//
act=mct/2;
//average conversion time//
disp(act, ' average conversion time (in ms) = ')