clc;
h=6.63*10^-34;     //planck's constant in J.sec
delx=10^-10;        //in m
m=9.1*10^-31;      //mass in kg
u=h/(2*%pi*delx);  //uncertainty principle
disp(u,"Uncertainty in electrons momentum in kg.m/sec = ");  //displaying result
KE=(1/(2*m))*(u*u); //uncertainty principle
disp(KE,"Uncertainty in electrons kinetic energy in Joule = ");  //displaying result