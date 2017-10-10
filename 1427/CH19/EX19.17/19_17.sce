//ques-19.17
//Calculating mass of a particle
clc
dx=9.54*10^-10;//uncertainity in position (in m)
dv=5.5*10^-20;//uncertainity in velocity (in m/s)
h=6.6*10^-34;//(in Js)
m=h/(4*%pi*dx*dv);
printf("The mass of the particle is %d mg.",m*10^6);
