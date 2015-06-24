//Chapter 5_Monolithic Components
//Caption : Capacitance per unit area
//Example5.4: Determine the capacitance per unit area of the 400 armstrong gate oxide of a MOSFET device relative permittivity of silicon dioxide=3.9.
//Solution:
clear;
clc;
Eo=8.86*10^-14;//permittivity of free space in F/cm
Er=3.9;//relative permittivity of MOSFET device
t=0.4*10^-5;//thickness of the gate oxide in cm
Co=Eo*Er/t;// since capoacitance(C)=permittivity(E)*area(A)/thicknes(t);        so C/A=e/t
disp('capacitance per unit area of gate oxide is:')
disp('F/cm^2',Co)