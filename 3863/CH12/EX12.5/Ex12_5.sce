clear
//
//

//Given
//Variable declaration
b=200                //Width in mm
d=300                //Depth in mm
L=5*1000             //Span in mm
L_star=5             //Span in m
w=9*1000             //Uniformly distributed load in N/m
E=1e4                //Youngs modulus in N/sq.mm

//Calculation
W=w*L_star                                 //Total load in N
I=b*d**3/12                                //Moment of Inertia in mm^4

//case(i):the slope at the support
thetaA=(-(W*(L**2))/(24*E*I))


//case(ii):maximum deflection
yc=(W*L**3)/(E*I)*(5/384)

//Result
printf("\n Slope at the support = %0.3f  radians",-thetaA)
printf("\n Maximum deflection = %0.3f  mm",yc)
