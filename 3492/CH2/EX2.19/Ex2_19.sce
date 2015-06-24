clc
//Chapter2
//Ex_2.19
//Given
no=8.5*10^28 // in m3
e=1.6*10^-19 //in coulombs
u_d=3.2*10^-3 //m2/V/s
sigma=5.9*10^7 //in ohm^-1*m^-1
n=sigma/(e*u_d)
disp(n,"concentration of conduction electrons in copper in m^-3 is")
A=n/no
disp(A,"Average number of electrons contributed per atom is")
