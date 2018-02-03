clear
//

//Given
//Variable declaration
d=3*10           //Diameter of the rod in mm
L=5*10**3        //Area of the rod in sq.mm
T1=95            //Initial temperature in degree celsius
T2=30            //Final temperature in degree celsius
E=2e5*10**6      //Youngs Modulus in N/sq.m
alpha=12e-6      //Co-efficient of linear expansion in per degree celsius

//Calculation
A=%pi/4*(d**2)        //Area of the rod
T=T1-T2                   //Fall in temperature in degree celsius

//case(i) When the ends do not yield
stress1=int(alpha*T*E*1e-6)     //Stress in N/sq.mm
Pull1=(stress1*A)        //Pull in the rod in N


//case(ii) When the ends yield by 0.12cm
delL=0.12*10
stress2=int((alpha*T*L-delL)*E/L*1e-6)      //Stress in N/sq.mm
Pull2=(stress2*A)                    //Pull in the rod in N


//Result
printf("\n Stress when the ends do not yield = %0.3f  N/mm^2",stress1)
printf("\n Pull in the rod when the ends do not yield = %0.3f  N",Pull1)
printf("\n Stress when the ends yield = %0.3f  N/mm^2",stress2)
printf("\n Pull in the rod when the ends yield = %0.3f  N",Pull2)
