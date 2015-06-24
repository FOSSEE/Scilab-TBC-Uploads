//Chapter-6,Example 6_5,Page 6-27
clc()

//Given Values:
B=10.9*10^-5            //Horizontal component of B in wb/m^2
u0=4*%pi*10^-7          //Permeability in free space

H=B/u0                  //Horizontal component of magnetic field
printf('Horizontal component of magnetic field is =%.1f Ampere/meter \n',H)
printf(' (Print mistake in unit in book)')
