// Exa 2.12

clc;
clear;

// Given data

//Referring fig No. 2.21, we get

Vcc=9; // Volts
Vbe=0.7; // Volts
R1=30*10^3; // Ω
Re=1.94; // Ω
B=125;  // current gain
VT = 25*10^-3; // Volts

// Solution

Iref= (Vcc-Vbe)/R1;
printf(' The value of Iref = %.3f mA. \n ',Iref*1000);
// Also at Node A.- Iref=Ic+3*Ib. i.e Ic = Iref*(B/(B+2))
// Assuming IB3 of widlar source negligible.
// Therefore putting back value of Iref we get values of Ic1
Ic=Iref*(B/(B+3));
Ic_mA = Ic*1000;  // in mA

printf('\n  The value of Ic1 = Ic2 = %.3f mA. \n ',Ic*10^3);
// Calculating Ic3 using eqn 2.74 ;

// Re = (VT/(Ic3*(1+1/B)))*ln(ic_mA/Ic3);
// Re - (VT/(Ic3*(1+1/B)))*ln(ic_mA/Ic3) = 0;

deff('y =  f(x)', 'y = (Re-(VT*log(Ic_mA/x))/(x*(1+1/B)))'); // here x = Ic3
[x,v,info]= fsolve(0.01,f);

printf(' \n  By trial and error method, we get Ic3 = %.4f mA.\n',x);
