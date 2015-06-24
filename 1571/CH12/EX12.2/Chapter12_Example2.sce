clc
clear

//INPUT
t1=573;//temperature of the hot side in K
t2=273;//temperature of the coll side in K
m=82;//mass of the black body in gm
cp=0.1;//specific heat of the black body kj/kg.K
dt=0.35;//ice melting at a rate of temperature in deg.C/sec
a=8;//area of black body in sq.cm

//CALCULATIONS
s=m*cp*dt/(a*(t1^4-t2^4));//boltzmann constant in cal/sq.cm/sec/deg^4

//OUTPUT
mprintf('boltzmann constant is %3.13f cal/sq.cm/sec/deg^4',s)
