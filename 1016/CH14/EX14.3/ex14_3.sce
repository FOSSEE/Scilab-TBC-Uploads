clc;clear;
//Example 14.3

//given data
m1=1.00813;//mass of 1H1 in a.m.u
m2=4.00386;//mass of 2He4 in a.m.u
SC=1.35;//solar constant in kW/m^2
d=1.5*10^11;//dist b/w earth and sum in m
e=1.6*10^-19;//the charge on electron in C
Na=6.02*10^26;//Avgraodo no. in 1/kg mole
pi=3.14;//const
//rxn = 4 1H1 = 2He4 + 2 1e0

//calculations
dm=(4*m1)-m2
E=dm*931;//energy produced in MeV
EP=E/4;//energy produced per atom
EP=EP*10^6*e;//conversion in J
EPkg=EP*Na;//energy produced by 1 kg of hydrogen
SC=SC*1000;//conversion in J/s-m^2
SA=4*pi*d^2;//surface area of sphere
ER=SC*SA;//energy recieved per second
m=ER/EPkg;
disp((m/10^3),'mass of hydrogen consumed in tonnes/second')