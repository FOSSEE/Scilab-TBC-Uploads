o//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vrms=110;                  //source voltage of the circuit in volts
alpha=90;                 //triggering angle in degree
Vm=Vrms*(2)^(1/2);       //maximum voltage in volts
Vave=(Vm/(2*%pi))*(1+cosd(alpha));
R=(0.2*(Vave)^(2))+5;   //load resistance in ohm
Iave=Vave/R;           //average current of the load
disp(Iave,'The average current when the triggering angle 90 degree in ampere is:')
