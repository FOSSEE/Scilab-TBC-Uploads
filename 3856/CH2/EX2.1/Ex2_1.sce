//Calucate the number of oxygen molecules
//Example 2.1

clc;

clear;

r=0.0050;.......//radius of alveoli in cm

P=1;........//Pressure in atm

R=0.08206;.......//Gas Constant in L atm K^-1 mol^-1

T=310;.......//Temperature in Kelvin

mp=14;........//Mole Percent of Oxygen

V=(4/3)*%pi*r^3*10^-3;........//Volume of one alveolus in Litres

n=(P*V)/(R*T);..........//Number of moles of air in one alveolus in mol

Na=6.022*10^23;.....//Avagadro's Number

N=n*(mp/100)*Na;.......//Number of Oxygen Molecules

printf("The number of oxygen molecules = %.1f*10^12 Oxygen molecules",N*10^-12);
