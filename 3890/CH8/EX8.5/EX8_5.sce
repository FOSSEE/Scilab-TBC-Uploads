//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 8.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

v=96;
L=50*10^(-3);
C=80*10^(-6);
R=40;

D=R/(2*L);
w=1/(L*C)^(1/2);
wr=(w^2-D^2)^(1/2);
t=%pi/wr;

printf('the thyristor will turned off at %f*10^3 ms',t )


