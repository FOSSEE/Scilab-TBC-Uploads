//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.6
//calculation of magnitude of the charge transferred from the cavity

//given data
Vd=0.2//discharge voltage(in V)
s=1//sensitivity(in pC/V)
epsilonr=2.5//relative permittivity
epsilon0=(36*%pi*10^9)^-1//electrical permittivity(in F/m) of free space
d1=1*10^-2//diameter(in m) of the cylindrical disc
t1=1*10^-2//thickness(in m) of the cylindrical disc
d2=1*10^-3//diameter(in m) of the cylindrical cavity
t2=1*10^-3//thickness(in m) of the cylindrical cavity


//calculation
Dm=Vd*s//discharge magnitude
Ca=epsilon0*(%pi*(d2/2)^2)/t2//capacitance of the cavity
Cb=epsilon0*epsilonr*(%pi*(d2/2)^2)/(t1-t2)//capacitance
qc=((Ca+Cb)/Cb)*Dm

printf('The charge transferred from the cavity is %3.2f pC',qc)
