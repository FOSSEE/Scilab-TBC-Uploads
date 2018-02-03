clear
//
//Given
//Variable declaration
L=150           //Length of the rod in cm
D=20            //Diameter of the rod in mm
P=20*10**3      //Axial pull in N
E=2.0e5         //Modulus of elasticity in N/sq.mm

//Calculation
A=(%pi/4)*(D**2)    //Area in sq.mm
 //case (i):stress
sigma=P/A               //Stress in N/sq.mm
 //case (ii):strain
e=sigma/E               //Strain
 //case (iii):elongation of the rod
dL=e*L                  //Elongation of the rod in cm

//Result
printf("\n Stress = %0.3f  N/mm^2",sigma)
printf("\n Strain = %0.6f  ",e)
printf("\n Elongation = %0.4f  cm",dL)
