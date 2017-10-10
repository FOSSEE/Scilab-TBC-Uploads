clc
//

//Variable declaration
p=180                                                               // Hydrostatic pressure(MPa)
E=200                                                               // Modulus of elasticity(GPa)
v=0.29                                                              // Poissons ratio() 

//Calculation
k=E/(3*(1-(2*v)))                                                   // Bulk modulus of steel(GPa)
e=-p/k                                                              // Dialation 
V=80*40*60                                                          // Volume of block in unstressed state(mm**3)
DELTAv=(e*V)/((10**3))                                            // change in volume per unit volume

// Results
printf("\n Change in volume = %1f mm**3' ,DELTAv)
