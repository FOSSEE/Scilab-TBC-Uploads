//Example 22.1 // critical field & transition temperature
clc;
clear;
//given data :
T=4.2;//to calculate critical field at T (kelvin)
Hc1=1.4D5;// critical magnetic field in amp/m
Hc2=4.2D5;//critical magnetic field in amp/m
T1=14;//temperature in kelvin
T2=13;//temperature ]in kevin 
Tc=sqrt(.5*((T2^2-T1^2)*(Hc1+Hc2)/(Hc1-Hc2)+T1^2+T2^2));// transition temperature
H=Hc1/(1-(T1/Tc)^2);//field at 0 degree
Hc=H*(1-(T/Tc)^2)
disp(Tc,"transition temperature in kelvin")
disp(Hc,"Critical field at T in amp/m")

//little error due to approximations in book
