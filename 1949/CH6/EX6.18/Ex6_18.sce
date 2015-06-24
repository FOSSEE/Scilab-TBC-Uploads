//Chapter-6,Example 6_18,Page 6-35
clc()

//Given Values:

u0=4*%pi*10^-7     //Permeability in vacuum
ur=900             //Relative permeability of iron ring
d=40*10^-2         //diameter of ring
l=5*10^-3          //air gap in the ring
A=5.8*10^-4        //Crosss sectional area of ring in m^2
phi=1.5*10^-4      //flux in weber
N=600              //Number of turns

//Calculations:
r=d/2              //Radius of ring

//We know, phi=B*A
B=phi/A            //Flux density

//But, B=u*H
H=B/(u0*ur)        //Magnetic field strength

m1=H*ur*l          //amp-turns in air gap
m2=H*2*%pi*r       //amp-turns by ring
m=m1+m2            //total mmf(amp-turns) required

I=m/N              //Required current
printf('Current required to produce given flux is =%.2f Amperes \n',I)
