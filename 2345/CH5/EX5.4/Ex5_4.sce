//dielectric constant and flux density
//Example 5.4(pg 194)
clc
clear
A=0.02//surface area of plate in m^2
d=0.001//distance between plates in m
C=4.5*(10^-10)//capacitance in F
V=15000//voltage in volts
K0=8.854*(10^-12)
K=(C*d)/(K0*A)
q=C*V// charge on condenser in coulombs
D=q/A//Electric flux density in Coulomb/m^2
printf('Thus dielectric constant is %3.2f \n',K)
printf('Thus Electric flux density is %e Coulombs/m^2',D)
