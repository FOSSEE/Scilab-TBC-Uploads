//Chapter-6,Example 6_17,Page 6-34
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
ur=600             //Relative permeability of iron
d=12*10^-2         //mean diameter of ring in m
N=500              //Number of turns
i=0.3              //Current in windings of solenoid in Amperes

//Calculations:
r=d/2                    //Radius of ring

B=u0*ur*N*i/(2*%pi*r)    //Flux densityin the core
printf('Flux densityin the core is =%.1f Wb/m^2 \n \n',B)

H=B/(u0*ur)             //Magnetic intensity
printf(' Magnetic intensity is =%.1f Amp-turns/m \n \n',H)

//We know that, B=u0(H+I)
I1=(B-u0*H)/u0           //magnetisation
I2=u0*I1                 //Electronic current loop

I=I2/B*100               //Percentage flux density due to electroniuc loop currents
printf(' Percentage flux density due to electroniuc loop currents is =%.2f percent \n \n',I)
