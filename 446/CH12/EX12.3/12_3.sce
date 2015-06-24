clear
clc
disp('Exa-12.3');
m=1.67*10^-27; r0=1.2*10^-15; v=4*%pi*(r0^3)/3      //standard values of mass radius and volume
p=m/v;                                               //denisty 
printf('Density of typical nucleus is %.0e kg/m3 \n',p);                            
r0=0.01;v=4*%pi*(r0^3)/3;p=2*10^17;              ////hypothetical values
m1=p*v;                                  
printf('The mass of the hypothetical nucleus would be %.0e Kg',m1);
