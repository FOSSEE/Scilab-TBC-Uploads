//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_8.sce.

clc;
clear;
R1=3;
R2=4;
R3=2;
R4=1;

a1=7;b1=-4;c1=2;                              //these are the coefficient values of I1,I2 and source obtained from the first loop in the given circuit 
a2=-10;b2=7;c2=3;                             //these are the coefficient values of I1,I2 and source obtained from the second loop  in the given circuit 
del=det([a1 b1;a2 b2]);
del1=det([c1 b1;c2 b2]);
del2=det([a1 c1;a2 c2]);

I1=del1/del;                              //Using Cramer's rule
I2=del2/del;                                //Using Cramer's rule
I=I2-I1;
printf("\n  Current through the 4 ohm resistor=%1.2f A(upward) \n",I)
