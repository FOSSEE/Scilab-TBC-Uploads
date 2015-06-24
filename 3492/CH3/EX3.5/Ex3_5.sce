clc
//Chapter3
//Ex_5
//Given
h=6.6*10^-34 //in J s
c=3*10^8 //in m/s
n=1
m=9.1*10^-31 //in Kg
a=0.1*10^-9 //in m
e=1.6*10^-19 //in coulombs
E1=(h^2*n^2)/(8*m*a^2)
E1=E1/e //in eV
disp(E1,"Ground Energy of the electron in J is")
//part(b)
n=3
E3=E1*n^2
disp(E3,"Energy required to put the electrons in third energy level in eV is")
E=E3-E1
disp(E,"Energy required to take the electron from E1 to E3 in eV is ")
lambda=h*c/(E*e)
disp(lambda,"wavelength of the required photon in nm is")
disp( "which is an X-ray photon")
