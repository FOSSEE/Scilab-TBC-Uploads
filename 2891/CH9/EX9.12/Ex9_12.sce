//Exa 9.12
clc;
clear;
close;
// given ;
f=50 // in hz
f=50*10^3 // in KHz
N1=400 // electron density of D layer in electrons/cm^3 
N2=5*10^5 // electron density of E layer in electrons/cm^3 
N3=2*10^6 // electron density of F layer in electrons/cm^3 
// formula :n=sqrt(epsilon_r)=sqrt(1-(81*N/f^2)) // WHERE f IS IN KhZ
// for D layer
epsilon_r1=1-(81*N1/f^2) // relative permittivity of D layer
// for E layer
epsilon_r2=1-(81*N2/f^2) // relative permittivity of E layer
// for F layer
epsilon_r3=1-(81*N3/f^2) // relative permittivity of F layer
disp(round(epsilon_r1),"relative permittivity of D layer:")
disp(epsilon_r2,"relative permittivity of E layer:")
disp(epsilon_r3,"relative permittivity of F layer:")
