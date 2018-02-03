clear
//

//Given
//Variable declaration
L=3*1000           //Length in mm
W=50*1000          //Point load in N
a=2*1000           //Distance between the load and fixed end in mm
I=1e8              //Moment of Inertia in mm^4
E=2e5              //Youngs modulus in N/sq.mm

//Calculation
//case(i):Slope at the free end
thetaB=(W*(a**2))/(2*E*I)
//case(ii):Deflection at the free end
yB=(((W*a**3)/(E*I*3))+((W*(a**2))/(2*E*I)*(L-a)))


//Result
printf("\n Slope at the free end = %0.3f  rad",thetaB)
printf("\n Deflection at the free end = %0.3f  mm",yB)
