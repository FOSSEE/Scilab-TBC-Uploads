//Chapter-3, Example 3.1, Page 109
//=============================================================================
clc;
clear;
//INPUT DATA
P=4;//no of poles
N1=500;//no of turns per pole
phi=0.02;//magnetic flux in wb/pole
t=0.02;//time in sec
rphi=0.002;//residual flux in wb/pole

//CALCULATIONS
N=P*N1;//total no of turns
di=P*phi;//total initial flux in wb
dR=P*rphi;//total residual flux in wb
dphi=di-dR;//change in flux in wb
dt=0.02;//time of opening the circuit in sec
E=N*(dphi/dt);//induced emf  in volts
//OUTPUT
mprintf("Thus the average voltage that is induced across field terminals is %4.0f volts \n",E);
mprintf("The direction of this emf is the same as that of the original direction of the exciting current");

//=================================END OF PROGRAM==============================
