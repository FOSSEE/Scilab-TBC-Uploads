//Chapter 9 Ex 17

clc;
close;
clear;
x=poly(0,'x');
loss=10;
SP1=x;
SP2=(2/3)*SP1;    //given
CP=(100/(100-loss))*SP2;
gain=SP1-CP;
gainper=(gain/CP)*100;
mprintf("The gain percentage is");
disp(gainper)
mprintf("percent");
