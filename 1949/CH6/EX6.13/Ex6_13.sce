//Chapter-6,Example 6_13,Page 6-32
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
l=30*10^-2         //length in meter
A=1*10^-4          //Crosss sectional area of ring in m^2
phi=2*10^-6        //flux in weber
N=300              //Number of turns
I=0.032            //Current in winding

//Calculations:
//(i):
B=phi/A            //Flux density
printf('i)Flux Density in the ring is =%.2f Wb/m^2 \n \n',B)

//(ii):
H=N*I/l            //Magnetic intensity
printf(' ii)Magnetic intensity is =%.0f Amp-turn/meter \n \n',H)

//(iii):
u=B/H              //Permeability of ring
printf(' iii)Permeability of ring is =%.6f Wb/A-m \n \n',u)
ur=u/u0            //Relative permeability of ring
printf(' Relative Permeability of ring is =%.1f \n \n',ur)

//(iv):
xm=ur-1            //susceptibility of the ring
printf(' iv)Magnetic susceptibility of the ring is =%.2f \n \n',xm)
