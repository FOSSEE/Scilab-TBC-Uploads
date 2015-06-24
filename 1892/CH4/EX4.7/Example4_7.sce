// Example 4.7

clear; clc; close;
format('v',6);

// Given data
P=16;//no.of poles
slots=144;//no. of slotes
conductors=10;//per slot
fi=0.03;//in mb/pole
N=375//in rpm

//Calculations
f=P*N/120;//in Hz
disp(f,"Frequency in Hz = ");
kc=1;//for full pitcheed coil
n=slots/P;//slots per pole
Beta=180/n;//in degree
m=n/3;//slots per pole per phase
kd=sind(3*Beta/2)/[m*sind(Beta/2)];//Distribution factor
Z=conductors*slots;//total no. of conductors
Zph=Z/3;// no. of armature per phase conductions
Tph=Zph/2;//turns/ph
Eph=4.44*kc*kd*f*fi*Tph;//in volts
disp(Eph,"Phase Voltage in volts = ");
VL=sqrt(3)*Eph;//in volt
disp(VL,"Line Voltage in volts = ");
