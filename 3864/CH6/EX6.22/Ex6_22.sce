clear
//
//

//Initilization of Variables

d=12 //mm //Diameter of helical spring
D=150 //mm //Mean Diameter
R=D*2**-1 //mm //Radius of helical spring
n=10 //no.of turns
G=80*10**3 //N/mm**2 
W=450 //N //Load

//Calculations

//Max shear stress 
q_s=16*W*R*(%pi*d**3)**-1 //N/mm**2

//Strain Energy stored
U=32*W**2*R**3*n*(G*d**4)**-1 //N-mm

//Deflection Produced
dell=64*W*R**3*n*(G*d**4)**-1 //mm

//Stiffness Spring
k=W*dell**-1 //N/mm

//Result
printf("\n Max shear stress is %0.2f  N/mm**2",q_s)
printf("\n Strain Energy stored is %0.2f  N-mm",U)
printf("\n Deflection Produced is %0.2f  mm",dell)
printf("\n Stiffness spring is %0.2f  N/mm",k)
