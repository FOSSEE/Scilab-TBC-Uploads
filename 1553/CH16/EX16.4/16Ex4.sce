//chapter 16 Ex 4
clc;
clear;
close;
//let pipes be A B and C 
t1=12; t2=15; //time taken by A and B to fill cistern individually
t3=20;       //time taken by waste pipe to empty the cistern
A1min=1/t1; B1min=1/t2; //part filled by A and B in 1 min each
ABC1min=1/t3;           //part filled by all 3 pipes in 1 min
C1min=ABC1min-(A1min+B1min);    //part emptied by C in 1 min
C1min=abs(C1min); //absolute since the value is negative as it empties the cistern
mprintf("Thus the waste pipe empties the cistern in %.0f min",1/C1min); 
