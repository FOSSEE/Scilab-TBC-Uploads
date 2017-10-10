//chapter 16 Ex 1
clc;
clear;
close;
t1=36; t2=45; //time taken by A and B to fill tank individually
A1hour=1/t1; B1hour=1/t2; //part filled by A and B in 1 hour each
AB1hour=A1hour+B1hour;    //part filled by both in 1 hour
mprintf("Thus the time taken by both pipes together to fill the tank is %d hours",1/AB1hour); 
