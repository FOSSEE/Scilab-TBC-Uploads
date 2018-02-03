clear
//
//

//Initilization of Variables

D=25 //mm //Diameter of Brass
De=50 //mm //External Diameter of steel tube
Di=25 //mm //Internal Diameter of steel tube
L=1.5 //m //Length of both bars
t1=30 //degree celsius //Initial Temperature
t2=100 //degree celsius //final Temperature
E_s=2*10**5 //N/mm**2 //Modulus of ELasticity of steel bar
E_b=1*10**5 //N/mm**2 //Modulus of Elasticity of brass bar
alpha_s=11.6*10**-6 //Temperature Coeff of steel
alpha_b=18.7*10**-6 //Temperature coeff of brass bar
d=20 //mm //diameter of pins

//Calculations

t=t2-t1 //Temperature Difference
A_s=%pi*4**-1*(De**2-Di**2) //mm**2 //Area of steel
A_b=%pi*4**-1*D**2 //mm**2 //Area of brass

//Let P_b be the tensile force in brass bar and P_s be the compressive force in steel bar
//But from Equilibrium of Forces 
//P_b=P_s=P

//Let dell=dell_s+dell_b
dell=(alpha_b-alpha_s)*t*L*1000

P=dell*(1*(A_s*E_s)**-1+1*(A_b*E_b)**-1)**-1*(L*1000)**-1
P_b=P
P_s=P
//Stress in steel
sigma_s=P*A_s**-1

//Stress in Brass
sigma_b=P_b*A_b**-1

//Area of Pins
A_p=%pi*4**-1*d**2

//Since,the force is resisted by two cross section of pins
tou=P*(2*A_p)**-1
    
//Result
printf("\n Stress in steel bar is %0.2f  N/mm**2",sigma_s)
printf("\n Stress in Brass bar is %0.2f  N/mm**2",sigma_b)
printf("\n Shear Stresss induced in pins is %0.2f  N/mm**2",tou)
