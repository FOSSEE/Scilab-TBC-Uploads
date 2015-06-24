// Exa 9.13
clc;
clear;
close;
//given :
f=50 // in hz
f=50*10^3 // in KHz
theta_i=30 // in degrees
N=400 // electron density of D layer in electrons/cm^3 
// formula :n=sqrt(epsilon_r)=sqrt(1-(81*N/f^2)) // WHERE f IS IN KhZ
// for D layer
epsilon_r=1-(81*N/f^2) // relative permittivity of D layer
n=sqrt(epsilon_r) // refrective index
// formula :nsin(theta_r)=sin(theta_i) // snell's law
theta_r=asind(sind(theta_i/n)) // angle of refraction in degrees
disp(theta_r,"angle of refraction in degrees:") 
