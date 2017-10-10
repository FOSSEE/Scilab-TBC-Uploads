//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_7.sce.

clc;
clear;
R1=5;             //Resistance in ohm
R2=2;            //Resistance in ohm
R3=3;           //Resistance in ohm

a1=7;b1=-5;c1=50;                               //these are the coefficient values of VA,VB and the source obtained from node A in the given circuit
a2=3;b2=5;c2=0;                                //these are the coefficient values of VA,VB and the source obtained from node B in the given circuit
del=det([a1 b1;a2 b2]);
del1=det([c1 b1;c2 b2]);
del2=det([a1 c1;a2 c2]);

VA=del1/del;                                    //Using Cramer's rule
VB=del2/del;                                   //Using Cramer's rule
Vba=VA-VB;
printf("\n  Voltage across the 2 ohm resistor=%d V \n",Vba)
