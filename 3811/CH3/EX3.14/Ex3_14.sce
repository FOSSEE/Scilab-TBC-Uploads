//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.14
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vs=110;                                               //source voltage in volts
Vdc=150;                                             //DC voltage in volts
Vm=Vs*2^(1/2);                                      //maximum voltage in volts
a=90;                                              //triggering angle in degree
R=1;                                              //resistance in ohm
theta=asind(Vdc/Vm);
theta1=75;                                      //approximated value of theta in degree
B=180-theta1;                                  //The value of bete
gama=B-a;                                     //conduction period in degree
VRrms=((Vdc^(2)*gama/180)+((Vm^(2)/(2*%pi))*(gama*(%pi/180)-(sind(2*B)-sind(2*a))/2)-((2*Vdc*Vm)/%pi)*(cosd(a)-cosd(B))))^(1/2);
Icrms=VRrms/R;                              //rms current
mprintf("\nThe rms current delivered to the battery during charging is %f ampere",Icrms)
mprintf("\nTo find the power delivered to the battery during charging:")
a1=((Vm/(R*%pi))*(((1-cosd(2*B))/2)-((1-cosd(2*a))/2)))-(((2*Vdc)/(R*%pi))*(sind(B)-sind(a)));
b1=((Vm/(R*%pi))*(gama*(%pi/180)+((sind(2*a)-sind(2*B))/2)))-(((2*Vdc)/(R*%pi))*(cosd(a)-cosd(B)));
pie1=atand(a1/b1);
I1crms=sqrt(a1^2+b1^2)/sqrt(2);
Ps=Vs*I1crms*cosd(pie1);
Ploss=Icrms*R;
Pcharge=Ps-Ploss;
mprintf("\nThe power delivered to the battery during charging is %f degree",Pcharge)
