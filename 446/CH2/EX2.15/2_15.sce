clear    
clc
disp('Exa-2.15');
r=1.5*10^11; I=1.4*10^3;     //radius and intensity of sun
s=4*%pi*r^2                 //surface area of the sun
Pr=s*I                     // Power radiated in J/sec
c=3*10^8;                //velocity of light
m=Pr/c^2                  //rate od decrease of mass
printf('The rate of decrease in mass of the sun is %.1e kg/sec.',m);