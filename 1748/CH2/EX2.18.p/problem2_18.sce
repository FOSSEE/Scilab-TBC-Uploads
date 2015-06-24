//problem 2.18
clc;
clear;
close;
//given data :
format('v',6);
P=8;//no. of poles
f=50;//in Hz
R2=0.04;//in ohm/phase
N=645;//in rpm
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns*100;//unitless
S=S/100;//unitless
//S=R2/X2;//at max torque
X2=R2/S;//in ohm per phase
a=R2/X2;//unitless
TstartBYTmax=2*a/(a^2+1);//ratio
TstartBYTmax=2*a/(a^2+1)*100;//in %
disp(round(TstartBYTmax),"% of max torque is : ");
S=3;//in %
S=3/100;//unitless
TflBYTmax=2*a*S/(a^2+S^2);//ratio
TflBYTmax=2*a*S/(a^2+S^2)*100;//in %
disp(round(TflBYTmax),"% of max torque at slip 3% is : ");
