clc

T=300//K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Vr=25 //V
Emax=3*10^5//V/cm
Na=10^18//cm^-3
esp=11.7
esp0=8.85*10^-14 

//Emax=sqrt((2*e*Vr*(Na+Nd))/(esp*(Na+Nd))
x=((Emax^2)*esp*esp0)/(2*e*Vr)            //solving the above equation we get

Nd=(Na*x)/(Na-x)
disp(Nd,"doping concentration in cm^-3 is =")
