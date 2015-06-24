//example-6.5
//page no-180
//given
//shear modulus
G=45*10^9   //N/m^2 because 1GPa=10^9 N/m^2
//burge vector
b=2.5*10^-9  //m
//inner and outer radius of elastic strain
r0=11*10^-10   //m
r1=10^5*b  //m
//poisson ratio
nu=0.31
//for an edge dislocation
Ued=G*b^2/(4*(%pi)*(1-nu))*log (r0/r1)  //J/m
//for screw dislocation
Usd=G*b^2/(4*(%pi))*log (r0/r1)  //J/m
//ratio of edge and screw dislocation
ratio=Ued/Usd
printf ("tha ratios of energies of an edge dislocation over screw dislocation is %f",ratio)
