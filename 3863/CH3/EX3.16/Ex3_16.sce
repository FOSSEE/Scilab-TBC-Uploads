clear
//

//Given
//Variable declaration
sigma1=600        //Major tensile stress in N/sq.mm
sigma2=300        //Minor tensile stress in N/sq.mm
tau=450           //Shear stress in N/sq.mm
theta1=45         //Angle of inclination in degrees
theta2=135        //Angle of inclination in degrees

//Calculation
sigman1=int(((sigma1+sigma2)/2)+(((sigma1-sigma2)/2)*cos((%pi/180)*(2*theta1)))+(tau*sin((%pi/180)*(2*theta1))))
sigman2=int(((sigma1+sigma2)/2)+(((sigma1-sigma2)/2)*cos((%pi/180)*(2*theta2)))+(tau*sin((%pi/180)*(2*theta2))))
sigmat1=int(((sigma1-sigma2)/2*(sin((%pi/180)*(2*theta1)))-(tau*cos((%pi/180)*(2*theta1)))))

sigmat2=int(((sigma1-sigma2)/2*(sin((%pi/180)*(2*theta2)))-(tau*cos((%pi/180)*(2*theta2)))))


//Result
printf("\n Normal stress(when theta is 45 degrees)= %0.3f  N/mm^2",sigman1)
printf("\n Normal stress(when theta is 135 degrees)= %0.3f  N/mm^2",sigman2)
printf("\n Tangential stress(when theta is 45 degrees)= %0.3f  N/mm^2",sigmat1)
printf("\n Tangential stress(when theta is 135 degrees)= %0.3f  N/mm^2",sigmat2)
