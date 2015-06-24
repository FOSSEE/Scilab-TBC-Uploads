clear;
clc;
printf("\t\t\tExample Number 8.9\n\n\n");
// effective emissivity of finned surface
// Example 8.9 (page no.-409-410) 
// solution

// for unit depth in the z-dimension we have 
A1 = 10;// [square meter]
A2 = 5;// [square meter]
A3 = 60;// [square meter]
// the apparent emissivity of the open cavity area A1 is given by equation(8-47) as 
// Ea1 = E*A3/[A1+E*(A3-A1)]
// for constant surface emissivity the emitted energy from the total area A1+A2 is
// e1 = Ea1*A1+E*A2*Eb
// and the energy emitted per unit area for that total area is 
// e_t = [(Ea1*A1+E*A2)/(A1+A2)]*Eb
// the coefficient of Eb is the effective emissivity, E_eff of the combination of the surface and open cavity. inserting 
// above equations gives the following values

// for E = 0.2

E = 0.2;
Ea1 = E*A3/[A1+E*(A3-A1)];
E_eff = [(Ea1*A1+E*A2)/(A1+A2)];
printf("For emissivity of 0.2 the value of effective emissivity is %f ",E_eff);

// for E = 0.5

E = 0.5;
Ea1 = E*A3/[A1+E*(A3-A1)];
E_eff = [(Ea1*A1+E*A2)/(A1+A2)];
printf("\n\n For emissivity of 0.5 the value of effective emissivity is %f ",E_eff);

// for E = 0.8

E = 0.8;
Ea1 = E*A3/[A1+E*(A3-A1)];
E_eff = [(Ea1*A1+E*A2)/(A1+A2)];
printf("\n\n For emissivity of 0.8 the value of effective emissivity is %f ",E_eff);





