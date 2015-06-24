//Chapter-6,Example 6_11,Page 6-31
clc()

//Given Values:
B=1.0              //Flux density in tesla
u0=4*%pi*10^-7     //Permeability in free space
i=2.0              //current in the core
n=10*100           //n=N/l i.e. turns per meter

//Calculations:
H=n*i               //Magnetising force produced in wire
printf('Magnetising force produced in wire is =%.2f Amp-turn/meter \n \n',H)

//We know that, B=u0(H+I).Thus,
I=B/u0-H           //Magnetisation of material
printf(' Magnetisation of material is =%.2f Amp-turn/meter \n \n',I)

//u=B/H, i.e. ur*u0=B/H.
ur=B/(u0*H)        //Relative permeability of core
printf(' Relative Permeability of core is =%.1f \n',ur)
