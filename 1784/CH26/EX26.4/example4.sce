//chapter26
//Example 4
clc
r=5.3*10^-11 //distance b/w elecctron and proton in the hydrogen atom in meter
e=1.6*10^-19 //charge in coul
G=6.7*10^-11 //gravitatinal constant in nt-m2/kg2
m1=9.1*10^-31 //mass of electron in kg
m2=1.7*10^-27 //mass of proton in kg
F1=(9*10^9)*e*e/(r^2) //coulmbs law
F2=G*m1*m2/(r^2) //gravitational force
disp(F1,"Coulomb force in nt is")
disp(F2,"Gravitational force in nt is")
