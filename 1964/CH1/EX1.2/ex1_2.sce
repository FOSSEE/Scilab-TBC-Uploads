//Chapter-1, Example 1.2, Page 18
//=============================================================================
clc;
clear;
//INPUT DATA
l1=20;//length in cm for first case
l2=0.4;//length in cm for second case
w=0.1;//width in cm
t=0.4;//thickness in cm
p=1.7*10^-6//resistivity of copper in ohm cm
a1=0.1*0.4//area(w*t) in cm^2 for first case
a2=0.1*20//area(l*t) in cm^2 for second case
//CALCULATIONS
R1=p*l1/a1;//resistance in ohms for first case
R2=p*l2/a2;//resistance in ohms for second case
//OUTPUT
mprintf("Thus the resistance in first and second cases are %g ohms and %g ohms\n",R1,R2);

//=================================END OF PROGRAM==============================
