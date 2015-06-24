//Chapter-6,Example 6_7,Page 6-28
clc()

//Given Values:

u0=4*%pi*10^-7     //Permeability in vacuum
ur=900             //Relative permeability of medium
r=25*10^-2         //radius of ring
A=25*10^-4         //Crosss sectional area of ring in m^2
Ag=1*10^-3         //Air gap
phi=2.7*10^-3      //flux in weber
N=400              //Number of turns

//Calculations:
//We know, phi=B*A
B=phi/A            //Flux density
//But, B=u*H
H=B/(u0*ur)        //Magnetic field strength
L=H*2*%pi*r+(B*Ag/u0)   //Total amp turns required (iron+air)
I=L/N           //Required current

printf('Current required to produce given flux is =%.2f Ampere \n',I)
