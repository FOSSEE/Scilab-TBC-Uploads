clear
//Given
//Variable declaration
tau=50       //Shear stress in N/sq.mm
C=8e4        //Modulus of rigidity in N/sq.mm

//Calculation
ste=(tau**2)/(2*C)    //Strain energy per unit volume in N/sq.mm

//Result
printf("\n Strain energy per unit volume = %0.3f  N/mm^2",ste)
