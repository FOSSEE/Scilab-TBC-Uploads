//Chapter-6,Example 6_22,Page 6-37
clc()

//Given Values:
ur=100            //Relative permeability of medium
l=0.2             //length of iron rod
d=10*10^-3        //diameter of solenoid in m
N=300             //no of turns per m
i=0.5             //current through solenoid in amp
r=d/2             //radius of solenoid

//Calculations:
x=ur-1            //susceptibility of the ring
H=N*i             //Magnetisisng field

//We know, x=I/H
I=x*H             //magnetisation

V=%pi*(r^2)*l     //volume of iron rod

//Also, I=M/V , thus
M=I*V             //magnetic moment
printf('Magnetic moment is =%.4f Amp-turn-m^2 \n',M)
