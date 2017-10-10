//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.3
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vrms=110;                          //The voltage on the ac side in volts
R=10;                             //Resistance value of the resistive load in ohm
alpha=60;                        //triggering angle of the converter in degree
Vm=110*(2)^(1/2);               //maximum voltage  in volts
disp('Instantaneous power method:')
P=((Vm)^(2)/(8*%pi*R))*(2*(%pi-alpha*(%pi/180))+sind(2*alpha));
disp(P,'Power dissipated in the load resistance in watt is:')
disp('Harmonic method:')
a1=(Vm/(2*%pi*R))*(cosd(2*alpha)-1);
b1=(Vm/(4*%pi*R))*(sind(2*alpha)+(2*(%pi-alpha*(%pi/180))));
c1=(a1^(2)+b1^(2))^(1/2);
pie1=atand(a1/b1);
P1=(Vm*c1*cosd(pie1))/2;
disp(P1,'The power computed by harmonic method in watt is:')

