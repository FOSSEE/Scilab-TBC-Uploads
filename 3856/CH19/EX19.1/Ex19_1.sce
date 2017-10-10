//Calculate the number of Einstens absorbed per second and the Total energy absorbed

//Example 19.1

clc;

clear;

A=0.65; //Absorbance of complex ion 

epsilion=1.11*10^4; //Molar absorptivity or Molar extinction coefficient in L mol^-1 cm^-1 

b=1; //Pathlength in cm

c1=A/(epsilion*b); //Concentraton in mol L^-1 or M

m=(c1*35)/1000; //number of moles of Ferrus ion produced in mol

q=0.93; //Quantum yield

fi=m/q; //Number of Einstens absorbed in mol or einstein  

t=30*60;  //Time irradiated with monochromatic light in s

v=fi/t; //Rate of absorption in einstein s^-1

printf("Number of Einstens absorbed per second = %.1f*10^-9 einstein s^-1",v*10^9);

lemda=468*10^-9;  //Wavelength in m

c=3.0*10^8;  //Speed of light in m s^-1

new=c/lemda;  //Frequency of monochromatic light in s^-1

h=6.626*10^-34; //Planck's constant in J s 

NA=6.022*10^23;  //Avogadro's number in mol^-1 

E=fi*NA*h*new; //Energy absorbed in J

printf("\n Total Energy absorbed = %.2f J ",E);




