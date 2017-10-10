//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_4.sce.

clc;
clear;
R5=60;
a1=9;b1=-5;c1=0;d1=80;                 //these are the coefficient values of VA,VB,VC  and the source obtained from node A in the given circuit 
a2=-1;b2=7;c2=-2;d2=24;                //these are the coefficient values of VA,VB,VC  and the source obtained from node B in the given circuit 
a3=0;b3=-3;c3=4;d3=36;                //these are the coefficient values of VA,VB,VC  and the source obtained from node C in the given circuit  

del=det([a1 b1 c1;a2 b2 c2;a3 b3 c3]);
del1=det([d1 b1 c1;d2 b2 c2;d3 b3 c3]);
del2=det([a1 d1 c1;a2 d2 c2;a3 d3 c3]);
del3=det([a1 b1 d1;a2 b2 d2;a3 b3 d3]);

VA=del1/del;                           //Using Cramer's rule
VB=del2/del;                           //Using Cramer's rule
VC=del3/del;                           //Using Cramer's rule
Vba=VA-VB;
I5=VC/R5;                            // from Ohm's law
printf("\n  Vba=%1.3f V \n",Vba)
//Answer vary dueto round off error
printf("\n  Current through the 60 ohm resistor=%1.3f A \n",I5)
