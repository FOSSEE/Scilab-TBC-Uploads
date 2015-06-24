//example 6.22

clear;
clc;

//Given:
M1=0.01;//no. of moles of KCl
M2=0.005;//no. of moles of MgCl2
M3=0.002;//no. of moles of MgSO4
M=0.1;//mass of water[Kg]
z11=1;
z12=1;
z21=2;
z22=1;
z31=2;
z32=2;

//To find the ionic strength in a solution
m1=M1/M;//molality of KCL[m]
m2=M2/M;//molality of MgCl2[m]
m3=M3/M;//molality of MgSO4[m]

I=0.5*[(m1*z11^2+m1*z12^2+m2*z21^2+2*m2*z22^2+m3*z31^2+m3*z32^2)];//[mol/Kg]

printf("The Ionic strength of a solution is %f mol/Kg",I);





