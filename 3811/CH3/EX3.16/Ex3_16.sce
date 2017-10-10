//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.16
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vdc=250;
Vs=208;//line to line ac voltage
R=3;//system resistance between battery bank and source in ohm
Beta=122;
Vmax=(sqrt(2)*Vs)/sqrt(3);
mprintf("\na.To calculate minimum triggering angle and associated conduction period:")
alphamin=60-asind(Vdc/(sqrt(3)*Vmax));
alphamin=ceil(alphamin);
gama=Beta-alphamin;
mprintf("\nThe minimum triggering angle is %d degree and the associated time period is %d degree",alphamin,gama)
mprintf("\nTo compute the average charging current for the minimum triggering angle:")
VR=Vdc+(((9*Vmax)/(2*%pi))*cosd(alphamin+150));
l=((9*Vmax)/(2*%pi))*cosd(alphamin+150);
IRave=VR/R;
mprintf("\nThe average charging current of minimum triggering angle is %f A",IRave)
//The answers vary due to round off error
