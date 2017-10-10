//ques-19.15
//Calculating uncertainity in velocity of an electron
clc
m=9.11*10^-31;//mass of electron (in kg)
dx=10;//uncertainity in position (in pm)
h=6.6*10^-34;//(in Js)
dv=h/(4*%pi*m*dx*10^-12);
printf("The uncertainity in velocity of the electron is %d m/s.",dv);

