
clear//

//Variable Declaration
//Say the ratio of stress in steel to concrete is R
R=14.286 
sigma_co=6*10**6 //Stress in concrete in Pa
Ast=3.6*10**-3 //Area of steel in m^2
Aco=86.4*10**-3 //Area of Concrete in m^2

//Calculation
sigma_st=R*sigma_co //Stress in steel in Pa
//Here stress is below the allowable hence safe
P=sigma_st*Ast+sigma_co*Aco //Allowable force in N

//Result
printf("\n The maximum allowable force is %0.0f kN",P*10**-3)
