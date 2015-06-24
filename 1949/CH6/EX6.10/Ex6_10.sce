//Chapter-6,Example 6_10,Page 6-30
clc()

//Given Values:
B=2.5              //Magnetic field in tesla
u0=4*%pi*10^-7     //Permeability in free space
i0=0.7             //current in the core
ri=11*10^-2        //inner radii of core
ro=12*10^-2        //outer radii of core

//Calculations:
r=(ri+ro)/2         //Average radii of core
n=3000/(2*%pi*r)    //Number of turns

//We know, B=u0*ur*n*i0 .Thus,
ur=B/(u0*n*i0)

printf('Relative Permeability of medium is =%.2f \n',ur)
