// Exa 3.5
clc;
clear;
close;
// Given data
T=300;// in K
V_T= T/11600;// in V
n=1;// assuming value
Jd=10^5;// in A/m^2
Jo=250;// in mA/m^2
Jo= Jo*10^-3;// in A/m^2
//Formula Id= Io*(%e^(Vd/V_T)-1) and after dividing both the sides by area of the junction, we have
// Jd= Jo*(%e^(Vd/V_T));// approx by neglecting 1 
Vd= V_T*log(Jd/Jo);// in volt
disp(Vd,"Voltage to be applied across a p-n junction in volt is : ")
