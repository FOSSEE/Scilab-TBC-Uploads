////
//Variable Declaration
s = 1.91e-13                //Sedimentation constant, s
NA = 6.02214129e+23         //mol^-1
M = 14100.0                 //Molecualr wt of lysozyme, g/mol
rho = 0.998                 //Density of water, kg/m3
eta = 1.002                 //Viscosity lysozyme in water, cP
T = 293.15                  //Temperature, K
vbar = 0.703                //Specific volume of cm3/g

//Calculations
m = M/NA
f = m*(1.-vbar*rho)/s
r = f/(6*%pi*eta)

//Results
printf("\n Radius of Lysozyme particle is %4.3f nm",r/1e-9)

