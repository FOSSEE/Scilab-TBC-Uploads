
//To Calculate the Energy  and linear Momentum and number of photons

//Example 42.1

clear;

clc;

h=4.14*10^-15;//Plank's Constant in eV-s

c=3*10^8;//Speed of Light in m/s

l=600*10^-9;//Wavelength of Light in metres

E=h*c/l;//Energy of each photon in eV
 
printf("(a) Energy of each photon = %.2f eV",E);
 
p=E/c;//Linear Momentum of each photon in eV-s/m

printf("\n     Linear Momentum of each photon = %.2f*10^-8 eV-s/m",p*10^8);

A=1*10^-4;//Area of cross section in m^2

e=1.6*10^-19;//Charge on an electron

I=100;//Intensity of light in W/m^2

t=1;//Duration for which beam passes in seconds

E1=I*A*t;//Energy crossing 1 cm^2 in 1 second

n=E1/(E*e);//Number of photons crossing 1 cm^2 in 1 second

printf("\n (b) Number of photons crossing 1 cm^2 in 1 second = %.1f*10^16",n*10^-16);
