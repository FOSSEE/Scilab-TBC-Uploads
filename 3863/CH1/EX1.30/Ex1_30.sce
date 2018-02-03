clear
//
//
//Given
//Variable declaration
Ds=20               //Diameter of steel rod in mm
Di_c=40             //Internal diameter of copper tube in mm
De_c=50             //External diameter of copper tube in mm
Es=200*10**3        //Youngs modulus of steel in N/sq.mm
Ec=100*10**3        //Youngs modulus of copper in N/sq.mm
alpha_s=12e-6       //Co-efficient of linear expansion of steel in per degree celsius
alpha_c=18e-6       //Co-efficient of linear expansion of copper in per degree celsius
T=50                //Rise of temperature in degree celsius

//Calculation
As=(%pi/4)*(Ds**2)                                             //Area of steel rod in sq.mm
Ac=(%pi/4)*(De_c**2-Di_c**2)                                   //Area of copper tube in sq.mm
sigmac=(((alpha_c-alpha_s)*T)/(((Ac/As)/Es)+(1/Ec))) //Compressive stress in copper
sigmas=(sigmac*(Ac/As))                                     //Tensile stress in steel


//Result
printf("\n Stress in copper = %0.3f  N/mm^2",sigmac)
printf("\n Stress in steel = %0.3f  N/mm^2",sigmas)
