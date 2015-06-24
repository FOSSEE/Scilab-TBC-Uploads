//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 4.3
//calculation of the dimensions of electrodes in coaxial cylindrical capacitor

//given data
epsilon0=(36*%pi*10^9)^-1//electrical permittivity(in F/m) of free space
//consider high density polyethylene as the dielectric material
epsilonr=2.3//relative permittivity of high density polyethylene
l=0.2//effective length(in m)
C=1000*10^-12//capacitance(in F) of the capacitor
V=15//operating voltage(in kV)
Emax=50//maximum stress(in kV/cm) for breakdown stress 200 kV/cm and factor of safety of 4

//calculation
//from equation of capacitance of coaxial cylindrical capacitor
//C=(2*%pi*epsilon0*epsilonr*l)/(lod(d2/d1)).............(1)
//from equation of Emax occuring near electrodes
//Emax=V/(r1*(log(r2/r1)))...............................(2)
//from equation (1) and equation (2),we get
logr2byr1=(2*%pi*epsilon0*epsilonr*l)/C//logd2/d1 = logr2/r1
r1=V/(Emax*logr2byr1)//from equation (1)
r2=r1*exp(logr2byr1)

printf('the value of inner diameter of electrodes in coaxial cylindrical capacitor is %3.2f cm',r1)
printf('\nthe value of outer diameter of electrodes in coaxial cylindrical capacitor is %3.2f cm',r2)
printf('\nthe thickness of the insulation is %3.2f cm',(r2-r1))

