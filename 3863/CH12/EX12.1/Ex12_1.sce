clear
//

//Given
//Variable declaration
L=6*1000        //Length in mm
W=50*1000       //Point load in N
I=78e6          //Moment of Inertia in mm^4
E=2.1e5         //Young's modulus in N/sq.mm

//Calculation
yc=((W*L**3)/(48*E*I))                      //The deflection at the centre in mm

thetaB=((180/%pi)*((W*L**2)/(16*E*I)))    //The slope at the supports


//Result
printf("\n Deflection at the centre = %0.3f  mm",yc)
printf("\n NOTE:The answer given for slope at the support is wrong.The correct answer is,")
printf("\n Slope at the support = %0.3f  degree",thetaB)
