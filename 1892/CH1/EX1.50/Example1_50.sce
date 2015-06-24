// Example 1.50

clear; clc; close;

format('v',5);
// Given data
PA=4;//no. of poles
PB=6;//no. of poles
f=50;//in Hz
fr2=1;//in Hz

//Calculations
Nsc=120*f/(PA+PB);//synchronous speed of set in rpm
S=1;//Slip
N=Nsc-(S/f)*Nsc;//combined speed of set in rpm
disp(N,"Combibned spoeed of set in rpm : ");
NSA=120*f/PA;//in rpm
SA=(NSA-N)/NSA;//slip 
disp(SA*100,"Slip of machines B in % : ");
fr1=SA*f;//in Hz
NSB=120*fr1/PB;//in rpm
SB=(NSB-N)/NSB;//slip
disp(SB*100,"Slip of machines B in % : ");
