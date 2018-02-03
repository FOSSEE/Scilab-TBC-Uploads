clear
//
//Given
//Variable declaration
Dg=20           //Diameter of gun metal rod in mm
Di_s=25         //Internal diameter of steel in mm
De_s=30         //External diameter of steel in mm
T1=30           //Temperature in degree celsius
T2=140          //Temperature in degree celsius
Es=2.1e5        //Youngs modulus of steel in N/sq.mm
Eg=1e5          //Youngs modulus of gun metal in N/sq.mm
alpha_s=12e-6   //Co-efficient of linear expansion of steel in per degree celsius
alpha_g=20e-6   //Co-efficient of linear expansion of gun metal in per degree celsius

//Calculation
Ag=(%pi/4)*Dg**2              //Area of gun metal in sq.mm
As=(%pi/4)*(De_s**2-Di_s**2)  //Area of steel in sq.mm
T=T2-T1                           //Fall in temperature in degree celsius
sigmag=(((alpha_g-alpha_s)*T)/(((Ag/As)/Es)+(1/Eg)))

sigmas=(sigmag*(Ag/As))


//Result
printf("\n Stress in gun metal rod = %0.3f  N/mm^2",sigmag)
printf("\n Stress in steel = %0.3f  N/mm^2",sigmas)
