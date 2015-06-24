//example-4.2
//page no-115
//given
//height of zinc unit cell
h=4.935*10^-10  //m
//side of the lattice
a=2.66*10^-10  //m
//as we know that zinc has HCP unit cell. 
//the number of effective atoms
Ne=6 
//as we know 
//tan(%pi/3)=x/(a/2)
//so
x=a/2*tan (%pi/3)  //m
//area of basal plane
Ar=6*a*x/2  //m^2
//volume of the unit cell
V=Ar*h  //m^3
//atomic weight of zinc
Aw=65.37
//avogadro's number
NA=6.023*10^23
//density of zinc
rho=Aw*Ne/(NA*V)/1000  //kg/m^3
printf ("the no of effective atoms, the volume of unit cell and density of zinc  are 6, 9.07*10^-29 and 7180 kg/m^3 resp")
