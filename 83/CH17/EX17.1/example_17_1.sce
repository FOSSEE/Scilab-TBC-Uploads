//Chapter 17
//Example 17.1
//page 602
//To find reactive power sensitivity at the bus 
clear;clc;
Q_nom=1; //given
Ksh=0.8; V=1.0; //assumed
Qnet=(V^2-Ksh*V^2)*Q_nom;
//senstivity=dQnet/dV
s=2*V-2*V*Ksh;
printf('Reactive power Sensitivity at the bus is = %0.2f pu',s);
