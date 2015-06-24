// Example 5.1.b: probability for silicon
clc, clear
// given :
Eg=1.07; // in eV
k=86.2*10^-6; // in eVk^-1
T=273+25; // in K
E_Ef=Eg/2;
f_E=1/(1+exp(E_Ef/(k*T)));
disp(f_E,"probability for diamond,f_E = ")
// answer is wrong in book
