//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_5.sce.

clc;
clear;
R1=10;
R2=30;
R3=15;
R4=45;

a1=3;b1=-1;c1=-9;                                   //these are the coefficient values of VA,VB and the source obtained from node A in the given circuit
a2=-3;b2=4;c2=-27;                                  //these are the coefficient values of VA,VB  and the source obtained from node B in the given circuit
del=det([a1 b1;a2 b2]);
del1=det([c1 b1;c2 b2]);
del2=det([a1 c1;a2 c2]);

VA=del1/del;                                  //Using Cramer's rule
VB=del2/del;                                 //Using Cramer's rule
Vba=VA-VB;
I2=VA/R2;                                    // from Ohm's law
printf("\n  Vba=%d V \n",Vba)
printf("\n  Current through the 30 ohm resistor=%1.4f A \n",I2)
