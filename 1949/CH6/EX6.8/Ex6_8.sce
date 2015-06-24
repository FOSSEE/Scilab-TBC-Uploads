//Chapter-6,Example 6_8,Page 6-29
clc()

//Given Values:

u0=4*%pi*10^-7     //Permeability in vacuum
A=0.2*10^-4        //Crosss sectional area of iron bar in m^2
H=1600             //magnetising field in A/m
phi=2.4*10^-5      //Magnetic flux in weber


//Calculations:
//We know, phi=B*A
B=phi/A            //Flux density
u=B/H              //magnetic permeability
ur=u/u0            //relative permeability
xm=ur-1            //susceptibility of the iron bar

printf('magnetic permeability of iron bar is =%.6f N/(A^2) \n \n',u)
printf(' susceptibility of the iron bar is =%.2f \n',xm)
