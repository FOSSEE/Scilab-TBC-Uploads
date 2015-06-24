clc;clear;
//Example 1.5
//Calculation of velocity of an electron

//given values
V=150;//potential difference between anode and cathode in V
m=9.31*10^-31;//mass of an electron in kg
q=1.6*10^-19;//charge on an electron in C

//Calculation
E=q*V;//energy(in J) gained by electron during speeding from cathode to anode
vel=sqrt(E*2/m);//equating with kinetic energy of electron i.e m(v^2)/2
disp(vel,'The velocity(in m/s) is')