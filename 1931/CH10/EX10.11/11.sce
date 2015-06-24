clc
clear
//INPUT DATA
Eg1=0.36//The energy gap of intrinsic semiconductor A in eV
Eg2=0.72//The energy gap of intrinsic semiconductor B in eV
T1=300//Temperature of semiconductor A in K
T2=300//Temperature of semiconductor B in K
m=9.11*10^-31//mass of an electron in Kg
KT=0.026//kt in eV

//CALCULATION
x=(exp((Eg2-Eg1)/(2*KT)))//The intrinsic carrier density of A to B

//OUTPUT
printf('The intrinsic carrier density of A to B is %i',x)
