//Example 19_5
clc();
clear;
//To find the time constant of the circuit and the final energy stored
l=0.5   //Units in H
r1=2        //Units in Ohms
r2=4            //Units in Ohms
r=r1+r2        //Units in Ohms
l_r=l/r  //Units in sec
i=2        //Units in A
ene=0.5*l*i^2
printf("The time constant is L/R=%.4f Sec\n The energy stored is=%d J",l_r,ene)
