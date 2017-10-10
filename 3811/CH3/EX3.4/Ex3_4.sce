//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.4
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vrms=110;                          //The voltage on the ac side in volts
R=10;                             //Resistance value of the resistive load in ohm
alpha=60;                        //triggering angle of the converter in degree
Vm=110*(2)^(1/2);               //maximum voltage  in volts
a1=(Vm/(2*%pi*R))*(cosd(2*alpha)-1);
b1=(Vm/(4*%pi*R))*(sind(2*alpha)+(2*(%pi-alpha*(%pi/180))));
c1=(a1^(2)+b1^(2))^(1/2);
pie1=atand(a1/b1);
pie1=abs(pie1);
I1rms=c1/sqrt(2);
Irms=(Vrms/R)*sqrt(1-((alpha/%pi)*(%pi/180))+(sin(2*alpha)/(2*%pi)));
pf=(I1rms/Irms)*cos(pie1);
disp(pf,'The power factor on the ac side is')
//The answers vary due to round off error
