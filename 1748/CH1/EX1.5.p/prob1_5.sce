// Prob 1.5
clc;
clear;
close;
format('v',6);
// Given data
ph=3;//no. of phase
P=16;//no. of poles
s=144;//no. of slots
con=10;//no. of conductors per slot
fi=0.035;//in Wb
N=375;//in rpm
f=P*N/120;//in Hz
disp(f,"Frequency in Hz : ");
s1=s/P;//no. of slots per pole
m=s1/ph;//no. of slots per pole per phase
alfa=180/s1;//slot angle in degree
Kd=sind(m*alfa/2)/(m*sind(alfa/2));//distribution factor
TotCon=s*con;//Total no. of conductors
TotCon1=s*con/ph;//Total no. of conductors
n=TotCon1/2;//no. of turns per phase
EMF=4.44*Kd*fi*f*n;//EMF per phase in volt
disp(EMF,"EMF per phase in volt : ");
VL=sqrt(3)*EMF;//line voltage in volt
disp(VL,"Line EMF in volt : ");
