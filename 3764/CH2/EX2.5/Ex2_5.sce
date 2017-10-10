clc
//

//Variable declaration
d=9                                                                              // Diameter of the rod(in)
t=3/4.0                                                                            // Thickness of the rod(in)
ex=12                                                                            // Normal stresses(ksi) 
ez=20                                                                            // Normal stresses(ksi)
E=(10*(10**6))                                                                 // Moduluus of elasticity(psi)
v=(1/3)                                                                          // Poissons ratio
V=15*15*(3/4.0)                                                                    // Volume(in**3)
n=-1

//Calculation
STRAINx=(1/((10**7)*(1.0)))*(12-(20/3.0))*(1000)                                         // Strain in x direction(in./in) 
STRAINy=n*(1/((10**7)*1.0))*((12/3.0)+(20/3.0))*(1000)                                   // Strain in y direction(in./in)
STRAINz=(1/((10**7)*(1.0)))*(20-(12/3.0))*(1000)                                         // Strain in z direction(in./in)


//Case(a) 
DELTAba=(STRAINx)*(d)                                                            // Change in diameter(in)
//Case(b) 
DELTAcd=(STRAINz)*(d)                                                            // Change in diameter(in)
//Case(c) 
DELTAt=(STRAINy)*(t)                                                             // Change in thickness(in)
//Case(d)          
e=(STRAINx+STRAINy+STRAINz)                                                      // Volume of the plate(in**3)
DeltaV=(e*V)         

// Results
printf("\n Change in diamter of rod AB =%1f in' ,DELTAba)
printf("\n Change in diamter of rod CD =%1f in' ,DELTAcd)
printf("\n Change in thickness =%1f in' ,DELTAt)
printf("\n Volume of the plate =%1f in**3' ,DeltaV)
