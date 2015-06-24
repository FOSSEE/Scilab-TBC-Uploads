clear;
clc;
C=1/100;fo=1000; //C=C1/C2
//value of fo as taken in solution
f1=fo*((sqrt(C+1))-sqrt(C));
f2=fo*((sqrt(C+1))+sqrt(C));
BW=f2-f1;
printf("Bandwidth = %d Hz",(BW));
