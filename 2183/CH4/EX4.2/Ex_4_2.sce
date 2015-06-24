// Example 4.2:Attenuation 
clc;
clear;
close;
L=1;//in km
h1=0.63;//in micro meter
h2=1;//in micro meter
h3=1.3;//in micro meter
Tf=1400;//Temperature in Kelvin
p=0.286;//photoelastic coefficient of silica
n=1.46;//Refractive index of silica
Bc=7*10^-11;//isothermal compersebility in in Metere square per N
K=1.38*10^-23;// boltzman constt. in julian per Kelvin
x1= (h1*10^-6);
x2= (h2*10^-6);
x3= (h3*10^-6);
Yr1=(8*%pi^3*n^8*p^2*Bc*K*Tf)/(3*(x1)^4);//ray leigh scattering coefficient
Ekm1= exp(-Yr1*L*10^3)
alpha1=10*(log10(1/Ekm1));//Attenuation in dB/km
Yr2=(8*%pi^3*n^8*p^2*Bc*K*Tf)/(3*(x2)^4);//ray leigh scattering coefficient
Ekm2= exp(-Yr2*L*10^3)
alpha2=10*(log10(1/Ekm2));//Attenuation in dB/km
Yr3=(8*%pi^3*n^8*p^2*Bc*K*Tf)/(3*(x3)^4);//ray leigh scattering coefficient
Ekm3= exp(-Yr3*L*10^3)
alpha3=10*(log10(1/Ekm3));//Attenuation in dB/km
disp(alpha1,"Attenuation in dB/km for (h=0.63 micro meter)")
disp(alpha2,"Attenuation in dB/km for (h=1 micro meter)")
disp(alpha3,"Attenuation in dB/km for (h=1.30 micro meter)")


