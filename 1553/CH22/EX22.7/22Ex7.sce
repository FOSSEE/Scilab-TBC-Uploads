//chapter 22 Ex 6

clc;
clear;
close;
p=500; amt=583.20; t=2;

rate=(nthroot((amt/p),t)-1)*100;
mprintf("The rate of interest is %d percent",rate);
