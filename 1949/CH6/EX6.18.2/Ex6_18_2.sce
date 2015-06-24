//Chapter-6,Example 6_18_2,Page 6-38
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
ur=380             //Relative permeability
d=20*10^-2         //diameter of solenoid in m
r=d/2              //radius of ring in m
A=5*10^-4          //Crosss sectional area of ring in m^2
phi=2*10^-3        //flux in weber
N=200              //Number of turns

//Calculations:
l=%pi*d            //air gap in the ring
S=(l/(u0*ur*A))    //Reluctance of iron ring
printf('Reluctance of iron ring is =%.2f Amp-turn per Wb \n \n',S)

//ohm's law for magnetic circuit is  phi=N*I/S. thus,
I=S*phi/N          //required current
printf(' Current required to obtain given magnetic flux is =%.2f Amperes \n',I)
