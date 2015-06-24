// Prob 1.7
clc;
clear;
close;
format('v',6);
// Given data
EL=6600;//in volt
ph=3;//no. of phase
P=4;//no. of poles
f=50;//in Hz
s=60;//no. of slots
con=2;//no. of conductors/slot
coilslot=13-1;//
n=s/P;//Slot per pole
m=n/ph;//Slot per pole per phase
Zp=s*con/ph;//no. of conductors connected in series/phase
Beta=180/n;//in degree
Kd=sind(m*Beta/2)/(m*sind(Beta/2));//distribution factor
coilspan=coilslot*180/n;//coil span in degree
Kp=cosd((180-144)/2);//Coil apan factor
//formu;a : EL=sqrt(3)*4.44*Kd*Kp*fi*f*T;//in volt
T=20;//assumed
fi=EL/(sqrt(3)*4.44*Kd*Kp*f*T);//in Wb
disp(fi,"Useful flux per pole in Wb : ");
//Note : Answer in the book is by mistake given in volts.
