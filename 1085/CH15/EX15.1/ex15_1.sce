//Exam:15.1
clc;
clear;
close;
U_n=1350//mobility of electron in cm2/volt-sec  
U_h=480//hole mobility in cm2/volt-sec
Sigma=1.072*10^10//density of electron hole pair per cc at 300°K for a pure silicon crystal
e=1.6*10^(-19);//charge on the electron in C
Sigma_i=Sigma*e*(U_n+U_h);//Conductivity of pure silicon crystal
p_i=1/(Sigma_i);//Resistivity of silicon crystal in Ohm-cm
P_i=p_i*10^(-2);//Resistivity of silicon crystal in Ohm-m
disp(Sigma_i,'Conductivity of pure silicon crystal(in mho/cm)=');
disp(P_i,'Resistivity of silicon crystal (in Ohm-m)=');