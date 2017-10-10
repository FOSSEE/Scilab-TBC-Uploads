//chapter 16 Ex 7
clc;
clear;
close;
//let pipes be A B and leak be C
t1=36; t2=45; //time taken by A and B to fill tank individually
t3=30;        //time taken by leak to empty the tank
A1min=1/t1; B1min=1/t2; //part filled by A and B in 1 min each individually
C1min=-1/t3; //part emptied by leak
AB1min=A1min+B1min;     //part filled by A and B in 1 min each together
AB7min=7*AB1min;
remainingPart=1-AB7min;
ABC1min=A1min+B1min+C1min;           //part filled by all 3 pipes in 1 min
totalTime=(1/ABC1min)*remainingPart+7;

mprintf("Thus total time taken to fill the tank is %.0f min",totalTime); 
