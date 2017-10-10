//chapter 16 Ex 6
clc;
clear;
close;
//let pipes be A B and leak be C
t1=14; t2=16; //time taken by A and B to fill cistern individually
t3=32/60;
A1hour=1/t1; B1hour=1/t2; //part filled by A and B in 1 hour each
AB1hour=A1hour+B1hour;

ABC1hour=1/(1/AB1hour+t3);           //part filled by all 3 pipes in 1 hour
C1hour=AB1hour-ABC1hour;    //part emptied by C in 1 hour

mprintf("Thus the leak empties the cistern in %.0f hours",1/C1hour); 
