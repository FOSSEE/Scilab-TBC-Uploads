//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_9.sce.

clc;
clear;
R1=3;
R2=4;
R3=2;
R4=1;

//case (a)
a1=13;b1=-6;c1=20;                                  //these are the coefficient values of VA,VB and source obtained from the node A in the given circuit 
a2=-5;b2=3;c2=-20;                                 //these are the coefficient values of VA,VB and source obtained from the node  B in the given circuit 
del=det([a1 b1;a2 b2]);
del1=det([c1 b1;c2 b2]);
VA1=del1/del;
Idash=-VA1/R2;

//case (b)
Vs=3;
a1=13;b1=-6;c1=9;                                   //these are the coefficient values of VA,VB and source obtained from the node A in the given circuit 
a2=-5;b2=3;c2=0;                                     //these are the coefficient values of VA,VB and source obtained from the node  B in the given circuit 
del=det([a1 b1;a2 b2]);
del1=det([c1 b1;c2 b2]);
VA2=del1/del;
I_doubledash=(Vs-VA2)/R2;
I=Idash+I_doubledash;
printf("\n  Current through the 4 ohm resistor=%1.2f A \n",I)
