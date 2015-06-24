clear 
clc
disp('Exa-7.6');
uz=9.27*10^-24; t=1.4*10^3; x=3.5*10^-2;    //various constants and given values
m=1.8*10^-25;v=750;                        // mass and velocity of the particle
d=(uz*t*(x^2))/(m*(v^2));                  //net separtion 
printf('The distance of separation is %.2f mm',d*10^3);  
