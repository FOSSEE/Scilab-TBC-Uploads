clear
//

//Given
//Variable declaration
L=2.5*1000           //Length in mm
w=16.4               //Uniformly distributed load in kN/m
I=7.95e7             //Moment of Inertia in mm^4
E=2e5                //Youngs modulus in N/sq.mm

//Calculation
W=w*L                           //Total load in N
yB=((W*L**3)/(E*I*8))    //Deflection at the free end in mm


//Result
printf("\n Deflection at the free end = %0.3f  mm",yB)
