clear
//
//
//Given
//Variable declaration
d=1.2               //Diameter in m
p=1.5               //Internal pressure in MN/sq.m
sigmat_star=200     //Yield stress in MN/sq.m
Sf=3                //Factor of safety

//Calculation
sigmat=sigmat_star/Sf    //Permissible stress in simple tension in MN/sq.m

//case(i):Thickness on the basis of Maximum principal stress theory
t1=((p*d)/2)/sigmat*1e3

//case(ii):Thickness on the basis of Maximum shear stress theory
t2=((p*d)/2)/sigmat*1e3

//case(iii):Thickness on the basis of Maximum shear strain energy theory
t3=(sqrt((((p*d/2)**2)+((p*d/4)**2)-((p*d/2)*(p*d/4)))/(sigmat**2)))


//Result
printf("\n Thickness of plate on the basis of maximum principal stress theory = %0.3f mm  ",t1)
printf("\n Thickness of plate on the basis of maximum shear stress theory = %0.3f mm ",t2)
printf("\n Thickness of plate on the basis of maximum shear strain energy theory = %0.3f mm  ",t3)
