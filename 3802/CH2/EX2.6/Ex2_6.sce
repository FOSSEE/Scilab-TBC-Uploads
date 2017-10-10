//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_6.sce.

clc;
clear;
R1=15;
R2=20;
R3=10;
R4=5;

a1=35;b1=-20;c1=2;                              //these are the coefficient values of I1,I2 and source obtained from loop ABDA in the given circuit 
a2=-20;b2=35;c2=0.5;                            //these are the coefficient values of I1,I2 and source obtained from loop BCDB in the given circuit 
del=det([a1 b1;a2 b2]);
del1=det([c1 b1;c2 b2]);
del2=det([a1 c1;a2 c2]);

I1=del1/del;                                  //Using Cramer's rule
I2=del2/del;                                  //Using Cramer's rule
I20=I1-I2;
Vcb=R3*I2;
printf("\n  Current through the 20 ohm resistor=%1.4f A \n",I20)
printf("\n  Voltage across the node B and C=%1.3f V \n",Vcb)
