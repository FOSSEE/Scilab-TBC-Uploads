//Finding K and flux density
//Example 15.30(pg. 411)
clc
clear
V=15*(10^3)//potential difference applied in V
A=0.02//surface area of plate in m^2
d=0.001//distance between plates in m
C=4.5*(10^-10)//Capacitance of capacitor in F
Ko=8.854*(10^-12)//constant
K=(C*d)/(Ko*A)//dielectric constant
q=C*V//charge on condenser in C
D=q/A//Electric flux density in C/m^2
printf('Thus the Charge of condenser is %e Coulomb\n',q)
printf('And the electric flux density of condenser is %e microF',D)
