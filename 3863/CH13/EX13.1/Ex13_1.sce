clear
//

//Given
//Variable declaration
L=3*1000           //Length in mm
W=25*1000          //Point load in N
I=1e8              //Moment of Inertia in mm^4
E=2.1e5            //Youngs modulus in N/sq.mm

//Calculation
//case(i):Slope of the cantilever at the free end
thetaB=((W*(L**2))/(2*E*I))

//case(ii):Deflection at the free end
yB=((W*L**3)/(E*I*3))


//Result
printf("\n Slope at the free end = %0.3f  rad",thetaB)
printf("\n Deflection at the free end = %0.3f  mm",yB)
