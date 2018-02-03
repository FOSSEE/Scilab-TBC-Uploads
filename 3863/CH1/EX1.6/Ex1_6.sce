clear
//

//Given
//Variable declaration
stress=480      //ultimate stress in N/sq.mm
P=1.9*10**6     //Axial load in N
D=200           //External diameter in mm
f=4             //Factor of safety

//Calculation
sigma=stress/f                                        //Working stress or Permissable stress in N/sq.mm
d=sqrt((D**2)-((P*4)/(%pi*sigma)))  //internal diameter in mm

//Result
printf("\n internal diameter = %0.3f  mm",d)
