//Chapter-6,Example 6_19,Page 6-36
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
ur=6*10^-3         //Relative permeability of iron
r=0.5              //radius of ring in m
l=1*10^-2          //air gap in the ring
A=5*10^-4          //Crosss sectional area of ring in m^2
i=5                //current in ampere
N=900              //Number of turns

//Calculations:
S=(l/(u0*A))+((2*%pi*r-l)/ur*A)     //Reluctance of iron
printf('Reluctance of iron is =%.2f Amp-turn per Wb \n \n',S)

m=N*i              //mmf produced
printf(' mmf produced is =%.2f Amp-turn \n',m)
