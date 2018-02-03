clear
//

//Given
//Variable declaration
L=4*1000           //Length in mm
w=50               //load at fixed end in N/mm
I=1e8              //Moment of Inertia in mm^4
E=2e5              //Youngs modulus in N/sq.mm

//Calculation
//case(i):Slope at the free end
thetaB=(-(w*(L**3))/(24*E*I))

//case(ii):Deflection at the free end
yB=((w*L**4)/(E*I*30))


//Result
printf("\n Slope at the free end = %0.3f  rad",-thetaB)
printf("\n Deflection at the free end = %0.3f  mm",yB)
