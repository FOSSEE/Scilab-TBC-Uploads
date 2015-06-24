//Chapter-6,Example 6_21,Page 6-36
clc()

//Given Values:
ur=1200           //Relative permeability of medium
V=10^-3           //volume of iron rod
N=5*10^2          //no of turns per m
i=0.5             //current through solenoid in amp

//Calculations:
x=ur-1            //susceptibility of the ring
H=N*i             //Magnetisisng field

//We know, x=I/H
I=x*H             //magnetisation

//Also, I=M/V , thus
M=I*V             //magnetic moment
printf('Magnetic moment is =%.2f Amp-turn-m^2 \n',M)
