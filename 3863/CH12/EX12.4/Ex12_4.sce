clear
//

//Given
//Variable declaration
L=5*1000        //Length in mm
W=5*1000        //Point load in N
a=3*1000        //Distance between point load and left end in mm
E=2e5           //Young's modulus in N/sq.mm
I=1e8           //Moment of Inertia in mm^4

//Calculation
b=L-a           //Width in mm
//case(i):The slope at the left support
thetaA=-(W*a*b)/(6*E*I*L)*(a+2*b)
//case(iii): The deflection under the load
yc=(W*a**2*b**2)/(3*E*I*L)
//case(iii):The maximum deflection
y_max=((W*b)/(9*sqrt(3)*E*I*L)*(((a**2)+(2*a*b))**(3/2)))


//Result
printf("\n slope at the left support = %0.3f  radians",thetaA)
printf("\n Deflection under the load = %0.3f  mm",yc)
printf("\n Maximum deflection = %0.3f  mm",y_max)
