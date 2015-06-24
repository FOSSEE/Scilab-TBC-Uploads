clc
//Chapter3
//Ex_2
//Given
lambda_o=522*10^-9 // in nm
lambda=250*10^-9 // in nm
h=6.6*10^-34 //in J s
c=3*10^8 //in m/s
e=1.6*10^-19 //in coulombs
I=20*10^-3 //in W/cm2
I=20*10^-3*10^4 //in J/s/m2
//part(a)
phi=h*c/(lambda_o*e) //in eV
disp(phi,"Work function of sodium in eV is")
KE=h*c/(lambda*e)-phi
disp(KE,"Kinetic energy of photoemitted electrons in eV is")
J=(e*I*lambda)/(h*c)
disp(J,"Photoelectric current density in A/m2 is")
