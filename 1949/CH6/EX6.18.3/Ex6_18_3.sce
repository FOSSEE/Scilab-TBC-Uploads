//Chapter-6,Example 6_18_3,Page 6-39
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
ur=1               //Relative permeability of air
r=15*10^-2         //radius of ring in m
A=6*10^-4          //Crosss sectional area of ring in m^2
I=4                //Coil current in amp
N=500              //Number of turns

//Calculations:
m=N*I              //MMF of coil
printf('MMF of coil is =%.0f Amp-turn \n \n',m)

l=2*%pi*r          //air gap
R=(l/(u0*ur*A))    //Reluctance of iron ring
printf(' Reluctance of iron ring is =%.0f Amp-turn per Wb \n \n',R)

phi=m/R            //Magnetic flux
printf(' Magnetic flux is =%.7f Weber \n \n',phi)

B=phi/A            //Magnetic Flux density
printf(' Magnetic flux density is =%.6f Weber per m^2 \n \n',B)

H=B/(u0*ur)        //Magnetic field intensity
printf(' Magnetic field intensity is =%.0f Amperes per m \n \n',H)

