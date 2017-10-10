//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.15
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vs=110;//source voltage in volts
Vdc=150;//DC voltage in volts
Vm=Vs*2^(1/2);//maximum voltage in volts
alphamin=0;//triggering angle in degree
R=1;//resistance in ohm
Beta=180;//The value of bete
gama=Beta-alphamin;//conduction period in degree
VRrms=sqrt(Vdc^(2)+((Vs*2^(1/2))^(2)/2)-((4*Vdc*Vm)/%pi));
VRrms=ceil(VRrms)
Idrms=VRrms/R;
mprintf("\nThe total rms current during discharging is %f A",Idrms)
a1=((Vm/(R*%pi))*(((1-cosd(2*Beta))/2)-((1-cosd(2*alphamin))/2)))-(((2*Vdc)/(R*%pi))*(sind(Beta)-sind(alphamin)));
b1=((4*Vdc)/(R*%pi))-(Vm/R);
pie1=atand(a1/b1);
I1drms=sqrt((a1^2+b1^2)/2);//rms value of fundamental component
Pac=Vs*I1drms*cosd(pie1);
Pac=Pac*10^(-3);
mprintf("\nThe power delivered to the ac source during discharging is %f kW",Pac)
