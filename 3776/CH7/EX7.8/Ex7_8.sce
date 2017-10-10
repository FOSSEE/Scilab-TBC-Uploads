clear
//Given 
dia = 10.0           //mm - The diameter of the cylinder 
c = dia/2            //mm - the radius of the cylinder 
A = 3.14*(c**2)      //mm2 The area of the crossection 
y = 4*c/(3*3.14)     //mm The com of cylinder 
I = 3.14*(c**4)/4    //mm4 - The moment of inertia of the cylinder
j = 3.14*(dia**4)/32 //mm4
T = 20.0             //N.m - The torque 
V = 250.0            //N - The shear 
M = 25.0             //N-m The bending moment 
Q = A*y/2  //mm
stress_dmax = 4*V/(3*A)                   //V*Q/(I*d)  //MPa The direct maximum stress
stress_tmax = T*c*(10**3)/j               //-MPa The torsion  maximum  stress
stress_total = stress_dmax + stress_tmax  //MPa The total stress
printf("\n The direct maximum stress %0.2f MPa",stress_dmax)
printf("\n The torsion  maximum  stress %0.2f MPa",stress_tmax)
printf("\n The total stress %0.2f MPa",stress_total)
