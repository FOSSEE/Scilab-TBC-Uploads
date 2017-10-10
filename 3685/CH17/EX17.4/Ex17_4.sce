clc
Px = 16 // pressure in kPa
Poy = 70 //pressure in kPa 
Mx = 1.735 // Mach number
Pyx = 3.34 // Pressure ratio
rho_yx = 2.25 // Density ratio
Tyx = 1.483  // Temperature ratio
Poyox = 0.84 // pressure ratio
My = 0.631 // Mach number
g = 1.4 // Ratio of heat capacities
Tox = 573 // stagnation temperature in K 
Toy = Tox // temperature equivalence
Tx = Tox/(1+((g-1)/2)*Mx^2) // temperature at x
Ty = Tyx*Tx // temperature at y
Pox = Poy/Poyox  // total pressure 
// From table
Mx = 1.735

printf("\n Example 17.4\n")
printf("\n Mach number of the tunnel is %f ",Mx)


