clc;
k=9*10^9;          //constant in N.m square/kg square
G=6.67*10^-11;     //universal gravitational constant in N.m square/kg square
m1=1.67*10^-27;    //mass in kg
m2=1.67*10^-27;    //mass in kg
mp=1.6*10^-19;     //mass of proton in kg
Fg=G*m1*m2;
Fe=k*mp*mp;
d=Fe/Fg;
disp(d,"Times electric force is greater than gravitational force"); //displaying result