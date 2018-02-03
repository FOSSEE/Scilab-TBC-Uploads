clear
//

//Given
//Variable declaration
sigma1=100        //Major principal stress in N/sq.mm
sigma2=-40        //Minor principal stress in N/sq.mm
theta=90-60       //Angle of inclination in degrees

//Calculation
sigman=((sigma1+sigma2)/2)+(((sigma1-sigma2)/2)*cos((%pi/180)*(2*theta)))
sigmat=((sigma1-sigma2)/2*(sin((%pi/180)*(2*theta))))

sigmaR=(sqrt(sigman**2+sigmat**2))

sigmat_max=int((sigma1-sigma2)/2)
phi=int((180/%pi)*(atan(sigmat/sigman)))

//Result
printf("\n Resultant stress in magnitude = %0.3f  N/mm^2",sigmaR)
printf("\n Direction of resultant stress = %0.3f  degrees",phi)
printf("\n Maximum shear stress = %0.3f  N/mm^2",sigmat_max)
