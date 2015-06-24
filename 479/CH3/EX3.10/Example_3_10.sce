//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.10
clear;
clc;

//Given
V = 0.3;//Volume of the tank in m^3
P1 = 1;//Initial pressure of the tank in atm
P2 = 0;//Final pressure of the tank in atm
T = 298;//Temperature of the tank in K
t = 10;//evacuation time in min

//delN=(V/(R*T)*delP)..(a) change in moles as V and T are constant
//delW=delN*R*T*lnP..(b)pump work required
//From (a)&(b),delW=V*delP*lnP

//To calculate the pump work required
//On doing integration of dW we will get

W = V*(P1-P2);//pump work done in J/sec
W1=(W*(1.033*10^4))/(75*600);
mprintf('The pump work required is %f hp',W1);
//end