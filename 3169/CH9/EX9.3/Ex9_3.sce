//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 9.3
//calculation of dielectric constant and complex permittivity of bakelite

//given data
C=147*10^-12//capacitance(in Farad)
Ca=35*10^-12//air capacitance(in Farad)
tandelta=0.0012
epsilon0=(36*%pi*10^9)^-1//electrical permittivity(in F/m) of free space


//calculation
epsilonr=C/Ca//dielectric constant
Kdash=epsilonr
Kdashdash=tandelta*Kdash
Kim=complex(Kdash,-Kdashdash)
epsilonast=epsilon0*Kim

printf('The dielectric constant is %3.1f ',epsilonr)
disp(epsilonast,'The complex permittivity(in F/m)is ')
