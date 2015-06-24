//Exam:15.3
clc;
clear;
close;
U_n=3900//mobility of electron in cm2/volt-sec  
U_h=1900//hole mobility in cm2/volt-sec
n_i=2.5*10^13;//concentration of electron
u_n=U_n*10^(-4);//mobility of electron in m2/volt-sec  
u_h=U_h*10^(-4);//hole mobility in m2/volt-sec
e=1.6*10^(-19);//charge on the electron in C
Sigma_i=n_i*e*(u_n+u_h)*10^6;//Conductivity
p_i=1/(Sigma_i);//resistivity of intrinsic germanium rod
l=1*10^(-2);//length of germanium rod in m
w=1*10^(-3);//width of germanium rod in m
t=1*10^(-3);//thick of germanium rod in m
A=w*t;//Area of cross section in m2
R=p_i*l/A;//Resistance of an intrinsic germanium rod in Ohm
disp(R/10^3,'Resistance of an intrinsic germanium rod (in K-Ohm)=');