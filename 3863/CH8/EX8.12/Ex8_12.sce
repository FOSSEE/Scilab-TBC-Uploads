clear
//
//

//Given
//Variable declaration
F=50*10**3              //Shear force in N
b=250                   //Base width in mm
h=200                   //height in mm

//Calculation
tau_max=int((3*F)/(b*h))     //Maximum shear stress in N/sq.mm
tau=((8*F)/(3*b*h))   //Shear stress at N.A. in N/sq.mm


//Result
printf("\n Maximum shear stress = %0.3f  N/mm^2",tau_max)
printf("\n Shear stress at N.A. = %0.3f  N/mm^2",tau)
