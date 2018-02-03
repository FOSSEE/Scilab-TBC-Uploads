clear
//Given
//Variable declaration
L=2*10**2        //Length of rod in cm
T1=10            //Initial temperature in degree celsius
T2=80            //Final temperature in degree celsius
E=1e5*10**6      //Youngs Modulus in N/sq.m
alpha=0.000012   //Co-efficient of linear expansion

//Calculation
T=T2-T1                          //Rise in temperature in degree celsius
dL=alpha*T*L                     //Expansion of the rod in cm
sigma=int((alpha*T*E)*1e-6)      //Thermal stress in N/sq.mm

//Result
printf("\n Expansion of the rod = %0.3f  cm",dL)
printf("\n Thermal stress = %0.3f  N/mm^2",sigma)
