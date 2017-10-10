clear
clc
//Example 1.4 GRID METHOD APPLIED TO A ROCKET
//Part(a)
m=9; //mass flow rate[Kg/s]
V=30; //velocity[m/s]
//Thrust force 
T=m*V //[N]
printf("\n(a)The thrust force in newtons = %.f N\n",T)
//Part(b)
m=19.8; //[lbm/s]
V=98.4; //[ft/s]
//1lbf.s^2=32.2(lbm.ft)
T=m*V/32.2 //[lbf]
printf("\n(b)The thrust force in units of pounds-force = %.1f lbf.\n",T)