clc

T=300 //K
k=8.617*10^-5 //eV/K
ni=1.5*10**10 //cm^-3
//Ef-Ea=a
a=3*k*T
//Ea-Ev=b
b=0.045 //eV
Eg=1.12 //eV

//Efi-Ef=(Eg/2)-(Ea-Ev)-(Ef-Ea)=kT*log(Na/ni)
c=(Eg/2)-(b)-(a)
Na=ni*exp(c/(k*T))
disp(Na,"Na in cm^-3 is= ")

