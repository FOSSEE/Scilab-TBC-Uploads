clear
//

//Given
//Variable declaration
L=3*1000           //Length in mm
w=10               //Uniformly distributed load in N/mm
a=2*1000           //Length of Uniformly distributed load from fixed end in mm
I=1e8              //Moment of Inertia in mm^4
E=2e5              //Youngs modulus in N/sq.mm

//Calculation
//case(i):Slope at the free end
thetaB=(w*(a**3))/(6*E*I)
//case(ii):Deflection at the free end
yB=(((w*a**4)/(E*I*8))+((w*(a**3))/(6*E*I)*(L-a)))


//Result
printf("\n Slope at the free end = %0.3f  rad",thetaB)
printf("\n Deflection at the free end = %0.3f  mm",yB)
