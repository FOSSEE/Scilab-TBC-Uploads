//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi 
//chapter 5
//example 5.6
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=2300;                        //rated voltage of the synchronous motor in volt
Vt=V/3^(1/2);
f=60;                         //frequency in Hertz
p=6;                         //number of poles
Tl=5000;                    //constant torque of the load in Nm
Xs=6;                      //synchronous reactance of the motor in ohm
ns=(120*f)/p;              //synchronous speed of the motor in rpm
omegas=(2*%pi*ns)/60;
Ef=(Tl*omegas*Xs)/(3*Vt);     //The minimum excitation that machine must maintain to provide the needed torque
disp(Ef,'The minimum excitation that machine must maintain to provide the needed torque in volt is:')
