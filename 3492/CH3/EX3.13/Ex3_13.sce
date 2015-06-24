clc
//Chapter3
//Ex_13
//Given
h=6.6*10^-34 //in J s
c=3*10^8 //in m/s
m=9.1*10^-31 //in Kg
e=1.6*10^-19 // in coulombs
v=2.1*10^6 // in m/s
E=m*v^2/2 //in J
E=E/e // in eV
E1=-13.6 // in eV
//change in the energy is E=En-E1
n=sqrt(-13.6/(E+E1))
printf(" the electron gets excited to %d level",n)
n=3
E3=-13.6/n^2
delta_E31=E3-E1 // in eV
delta_E31=delta_E31*e //in J
lambda_31=h*c/delta_E31
disp(lambda_31*10^9,"wavelength of emmited radiation from n=3 to n=1 in nm is")
//Another probability is transition fromm n=3 to n=2
n=2
E2=-13.6/n^2
delta_E32=E3-E2 // in eV
delta_E32=delta_E32*e // in J
lambda_32=h*c/delta_E32
disp(lambda_32*10^9,"wavelength of emmited radiation from n=3 to n=2 in nm is")
//Another probability is transition fromm n=2 to n=1
E2=-13.6/n^2
delta_E21=E2-E1 // in eV
delta_E21=delta_E21*e // in J
lambda_21=h*c/delta_E21
disp(lambda_21*10^9,"wavelength of emmited radiation from n=2 to n=1 in nm is")
