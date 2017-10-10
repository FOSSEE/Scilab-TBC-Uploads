//chapter 16 Ex 5
clc;
clear;
close;
//let pipes be A
t1=3; //time taken by A to fill tank in 1 hour
t2=7/2;//time taken by leak to empty the tank
A1hour=1/t1; //part filled by A in 1 hour

Aleak1hour=1/t2;    //part filled inspite of leak in 1 hour
leak1hour=A1hour-Aleak1hour;
mprintf("Thus the leak empties the tank in %.0f hours",1/leak1hour); 
