clc();
clear;
//Given :
h = 1.05*10^-34; //planck's constant in Js
m = 9.1*10^-31; //electron rest mass in kg
c = 3*10^8; //Speed of light in m/s
b = 1.7*10^-15; // range of nuclear force in m
m_pi = h/(b*c); // rest mass of a pion in kg
t = m_pi/m; // times the rest mass of an electron
printf("Rest mass of a pion is %d times the rest mass of an electron",t);
// textbook answer is 220 , because  approximate value for m_pi was considered.
