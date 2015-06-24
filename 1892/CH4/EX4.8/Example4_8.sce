// Example 4.8

clear; clc; close;
format('v',6);

// Given data
P=4;//no.of poles
phase=3;//no. of phase
slots=36;//no. of stator slotes
turns=20;//turns per coil
conductors=10;//per slot
fi_m=1.8;//in m wb
N=3000//in rpm

//Calculations
f=P*N/120;//in Hz
Tph=turns*phase*P;//no. of turns per phase
m=slots/(phase*P);//slots per pole per phase
n=slots/P;//slots per pole
Beta=180/n;//in degree
kd1=sind(3*Beta/2)/[m*sind(Beta/2)];//Distribution factor
alfa=2*Beta;//in degree(Short Pitched by 2slots)
kp1=cosd(alfa/2);//unitless
ks1=1;//coefficient
kn1=kd1*kp1*ks1;//winding factor
Eq=4.44*f*fi_m*10^-3*kn1*Tph;//in volts
disp(Eq,"Open Circuit Phase emf in volts = ");
