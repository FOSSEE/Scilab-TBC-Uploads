//Chapter-6,Example 6_16,Page 6-3
clc()

//Given Values:
u0=4*%pi*10^-7     //Permeability in vacuum
ur=1000            //Relative permeability of medium
V=10^-4            //Volume of iron rod in m^3
n=500              //Number of turns per meter
i=0.5              //Current in windings of solenoid in Amperes

//Calculations:
//We know I=(ur-1)H
//and H=ni , hence
I=(ur-1)*n*i       //Intensity of magnetisation
M=I*V              //Magnetic moment

printf('Magnetic moment of the rod is =%.0f A-m^2 \n',M)


