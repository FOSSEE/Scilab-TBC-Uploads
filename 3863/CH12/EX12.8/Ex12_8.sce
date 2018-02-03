clear
//Given
//Variable declaration
L=6*1000       //Length in mm
W=40*1000      //Point load in N
a=4*1000       //Distance of point load from left support in mm
I=7.33e7       //Moment of Inertia in mm^4
E=2e5          //Youngs modulus in sq.mm

//Calculation
b=L-a                                 //Width of beam in mm
yc=(-(W*a**2*b**2)/(3*E*I*L))  //Deflection under the load in mm


//Result
printf("\n Deflection under the load = %0.3f  mm",yc)
