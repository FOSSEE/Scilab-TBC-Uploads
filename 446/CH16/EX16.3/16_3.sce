clear
clc
disp('Ex-16.3');       
k=8.62*10^-5; //various values and constants
T= 1.5*10^10;
delE=1.3*10^6;
a= delE/(k*T);  //exponent in boltzmann factor
b=%e^-a;        //ratio of neutron to protons
r=(1/(1+b))*100;     //relative number of protons
printf('The percentage of protons is %.0f and neutrons is %.0f.',r,100-r);