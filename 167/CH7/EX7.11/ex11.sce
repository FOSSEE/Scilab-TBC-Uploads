//ques11
//Isentropic Compression of an Ideal Gas
clear
clc
//using the equation P2=P1*(T2/T1)^(k/(k-1)) 
P1=14;//initial pressure in psia
T2=780;//final temp in R
T1=510;//initial temp in R
k=1.667;//isentropic ratio 
P2=P1*(T2/T1)^(k/(k-1));
printf('Final pressure = %.1f psia',P2);
