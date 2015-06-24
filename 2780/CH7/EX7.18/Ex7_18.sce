clc
//to calculate minimum uncertainity in the momentum 
delxmax=5*10^-14 //uncertainity in position in m
h=6.626*10^-34 //plank's constant in Js
delpmin=h/(2*%pi*delxmax)
disp("minimum uncertainity in the momentum of the nucleon is delpmin="+string(delpmin)+"kg m/s")
m=1.675*10^-27 //mass in kg
Emin=(delpmin^2)/(2*m*1.6*10^-19)
disp("minimum kinetic energy of the nucleon is Emin="+string(Emin)+"eV")
//the answer is given wrong in the book Emin=0.039 eV
