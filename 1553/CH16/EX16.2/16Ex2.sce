//chapter 16 Ex 2
clc;
clear;
close;
//let pipes be A, B and C
t1=10; t2=12; //time taken by A and B to fill tank individually
t3=-20; //negative sign since time taken is to empty the tank
A1hour=1/t1; B1hour=1/t2; //part filled by A and B in 1 hour each
C1hour=1/t3;              //part emptied by C in 1 hour
ABC1hour=A1hour+B1hour+C1hour;    //part filled by all 3 pipes in 1 hour
mprintf("Thus the time taken by all pipes together to fill the tank is %.1f hours",1/ABC1hour); 
