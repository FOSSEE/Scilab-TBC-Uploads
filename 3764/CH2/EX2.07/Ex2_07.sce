clc
//

//Variable declaration
P=12*((10**3))                                                                  // Axial load(kN)
r=8*((10**-3))                                                                  // Radius of the rod(m)
n=-1

//Calculation
A=(%pi)*(r**2)                                                                // Cross sectional area of rod(m**2)
Sx=(P/A)                                                                          // Stress in cylinder(MPa) 
Ex=(300/500.0)                                                                      // Strain()
Ey=(n*(2.4))/16.0                                                                   // Strain()

E=Sx/Ex                                                                           // Modulus of elasticity(GPa)
v=n*(Ey/Ex)                                                                       // Poissons ratio()  

//Result
printf("\n Modulus of elasticity = %.1f GPa' ,E)
printf("\n Poissons ratio = %.1f ' ,v)
