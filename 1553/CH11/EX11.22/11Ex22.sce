//Chapter 9 Ex 22

clc;
close;
clear;
x=poly(0,'x');
gain=(20/100);
CP=x;
CP1=(3/4)*CP;
CP2=(1/4)*CP;    //given
SP=((1+gain)*CP1)+CP2;
gain=SP-CP;
gainper=(gain/CP)*100;
mprintf("The gain percentage is");
disp(gainper)
mprintf("percent");
