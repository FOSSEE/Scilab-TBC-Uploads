//Example 15.15
//steady output speed of DC motor
clear;clc;
xdel(winsid());

//Jm= moment of inertia of motor
Jm=6.5*10^-2;
//Fm= friction of motor
Fm=3.5*10^-3;
//a=gear ratio
a=1/100;
//Jl= inertia of load
Jl=420;
//Fl= friction of load
Fl=220;
//J= total moment of inertia
J=Jm+(a^2*Jl)   //unit=kg.m^2
//F= total friction
F=Fm+(a^2*Fl)  //unit=kg.m^2
s=%s
//wm1=Angular velocity in frequency domain
wm1=2/(s*((J*s)+F))
t=1;
//wm2=Angular velocity in time domain
//since "t=1", wm2 is initial value of angular velocity
wm2=(2/F)*(1-(%e^((-5.7*10^-2)/(10.7*10^-2))*t))  //unit=rad/sec
//Nm1=motor speed in rps(initial speed)
Nm1=wm2/(2*%pi);
//Nm2=motor speed in rpm
Nm2=(wm2/(2*%pi))*60;  //unit=rpm
//Nl=load speed
Nl=(1/100)*((wm2/(2*%pi))*60) //unit=rpm
//Nos= steady output speed
//since Nos is steady speed, the exponential term of wn2 becomes 0.
Nos=(1/100)*(60/(2*%pi))*(2/(5.7*10^-2))  //unit=rpm

