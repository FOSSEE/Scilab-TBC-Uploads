clc
//

//Variable declaration
T=4.60*(10**3)                                                // Torque(N.m)
L=1.2                                                         // length(m) 
G=77*(10**9)                                                  // modulus of rigidity(Pa)
J=614*(10**-9)                                                // Polar moment of inertia(m**4)
phy=8.50  
c=25*(10**-3)                                                 // radius(m)

//Calculation         
// Case(a)
phyl=((T*L)/(J*G))*(360/(2*(%pi)))                        // Lateral twist(degree)
phyp=phy-phyl                                                 // Permanent twist(degree)
// Case(b)
Tlmax=((T*c)/(J))/((10**6))                                 // Residual stresses(MPa) 

// Result
printf("\n Case(a): Permanent twist = %1f degree' ,phyp)
printf("\n Case(b): Residual stress = %1f MPa ' ,Tlmax)
