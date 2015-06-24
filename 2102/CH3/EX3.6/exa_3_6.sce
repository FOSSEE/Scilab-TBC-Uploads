// Exa 3.6
clc;
clear;
close;
// Given data
J=10^4;// in A/m^2
Jo=200;// in mA/m^2
Jo= Jo*10^-3;// in A/m^2
T=300;// in K
V_T= T/11600;// in V
e=1.6*10^-19;// electrone charge
k= 1.38*10^-23;
n=1;// assuming value
//Formula I= Io*(%e^(e*V/(n*k*T))-1) and after dividing both the sides by area of the junction, we have
// J= Jo*(%e^(e*V/(n*k*T)));// approx by neglecting 1 
V= n*k*T*log(J/Jo)/e;
disp(V,"Voltage to be applied across the junction in volt is")

// Note:- In the book, the value of T (i.e. 300) has not been putted to evaluate the value of V. So if we'll not put the value of T to evaluate the value of V, then the answer of coding will be same as book. Hence the 
//              the answer in the book is wrong.
