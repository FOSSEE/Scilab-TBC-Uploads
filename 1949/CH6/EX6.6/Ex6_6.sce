//Chapter-6,Example 6_6,Page 6-28
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
ur=900             //Relative permeability of medium
l=2                //length in meter
A=60*10^-4         //Crosss sectional area of ring in m^2
phi=5.9*10^-3      //flux in weber
n=700              //Number of turns

//Calculations:
//We know, phi=B*A
B=phi/A            //Flux density
//But, B=u*H
H=B/(u0*ur)        //Magnetic field strength

I=H*l/n            //Required current
printf('Current required to produce given flux is =%.2f Ampere \n',I)
