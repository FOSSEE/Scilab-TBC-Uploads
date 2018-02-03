clear
//

//Given
//Variable declaration
Dc=15             //Diameter of copper rod in mm
Di_s=20           //Internal diameter of steel in mm
De_s=30           //External diameter of steel in mm
T1=10             //Initial temperature in degree celsius
T2=200            //Raised temperature in degree celsius
Es=2.1e5          //Youngs modulus of steel in N/sq.mm
Ec=1e5            //Youngs modulus of copper in N/sq.mm
alpha_s=11e-6     //Co-efficient of linear expansion of steel in per degree celsius
alpha_c=18e-6     //Co-efficient of linear expansion of copper in per degree celsius

//Calculation
Ac=(%pi/4)*Dc**2                //Area of copper tube in sq.mm
As=(%pi/4)*(De_s**2-Di_s**2)    //Area of steel rod in sq.mm
T=T2-T1                             //Rise of temperature in degree celsius
sigmas=(((alpha_c-alpha_s)*T)/(((As/Ac)/Ec)+(1/Es)))

sigmac=(sigmas*(As/Ac))


//Result
printf("\n NOTE: The answers in the book for stresses are wrong.The correct answers are,")
printf("\n Stress in steel = %0.3f  N/mm^2",sigmas)
printf("\n Stress in copper = %0.3f  N/mm^2",sigmac)
