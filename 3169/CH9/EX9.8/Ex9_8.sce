//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.8
//calculation of voltage at balance

//given data
V=10000//applied voltage(in V)
R3=1000/%pi//resistance(in ohm) in CD branch
R4=62//variable resistance(in ohm)
Cs=100*10^-12//standard capacitance(in F)
f=50//frequency(in Hz)
C3=50*10^-9//variable capacitor(in F)

//calculation
Rx=C3*R4/Cs
Cx=R3*Cs/R4
omega=2*%pi*f
zx=complex(Rx,-1/(omega*Cx))
VR4=R4*V/(R4+zx)
MVR4=sqrt((real(VR4))^2+(imag(VR4))^2)//magnitude

printf('The voltage across AD branch at balance is %3.1f V',MVR4)
