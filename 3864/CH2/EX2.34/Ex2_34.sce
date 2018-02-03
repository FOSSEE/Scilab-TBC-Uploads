clear
//

//Initilization of Variables

b_s=60 //mm //width of steel Bar
t_s=10 //mm //thickness of steel Bar
b_c=40 //mm //width of copper bar
t_c=5  //mm //thickness of copper bar
E_s=2*10**5 //N/mm**2 //Modulus of Elasticity of steel bar
E_c=1*10**5 //N/mm**2 //Modulus of Elasticity of copper bar
alpha_s=12*10**-6 //Per degree celsius //Temperature coeff of steel bar
alpha_c=17*10**-6 //Per degree celsius //Temperature coeff of copper bar
L=1000 //mm //Length of bar
L_s=1000 //mm //Length of bar
t=80 //degree celsius

//Calculations

A_s=b_s*t_s //Area of steel bar
A_c=b_c*t_c //Area of copper bar

//Let P_s be the tensile force in steel bar and P_c be the compressive force in copper bar
//The equilibrium of forces gives 
//P_s=2*P_c

//Let dell=dell_s+dell_b
dell=(alpha_c-alpha_s)*t

P_c=dell*(2*(A_s*E_s)**-1+1*(A_c*E_c)**-1)**-1
P_s=2*P_c

//Stress in copper 
sigma_c=P_c*A_c**-1

//Stress in steel   
sigma_s=P_s*A_s**-1

//Change  in Length of bar
dell_2=alpha_s*t*L+P_s*L_s*(A_s*E_s)**-1

//result
printf("\n Stress in copper is %0.2f  N/mm**2",sigma_c)
printf("\n Stress in steel is %0.2f  N/mm**2",sigma_s)
printf("\n the change in Length is %0.2f  mm",dell_2)
