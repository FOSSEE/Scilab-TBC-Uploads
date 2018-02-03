clear
//

//Initilization of Variables

t=40 //degree celsius //temperature
A_s=400 //mm**2 //Area of steel bar
A_c=600 //mm**2 //Area of copper bar
E_s=2*10**5 //N/mm**2 //Modulus of Elasticity of steel bar
E_c=1*10**5 //N/mm**2 //Modulus of Elasticity of copper bar
alpha_s=12*10**-6 //degree celsius //Temperature coeff of steel bar
alpha_c=18*10**-6 //degree celsius //Temperature coeff of copper bar
L_c=800 //mm //Length of copper bar
L_s=600 //mm //Length of steel bar

//Calculations

//Let P_s be the tensile force in steel bar and P_c be the compressive force in copper bar
//Static Equilibrium obtained by taking moment about A
//P_c=2*P_s

//From property of similar triangles we get
//(alpha_c*Lc-dell_c)*1**-1=(alpha_s*L_s-dell_s)*2**-1
//After substituting values in above equations and further simplifying we get
P_s=(2*alpha_c*L_c-alpha_s*L_s)*t*(L_s*(A_s*E_s)**-1+4*L_c*(A_c*E_c)**-1)**-1
P_c=2*P_s

//Stress in steel rod
sigma_s=P_s*A_s**-1 //N/mm**2 

//Stress in copper rod
sigma_c=P_c*A_c**-1 //N/mm**2

//Result
printf("\n Stress in steel rod is %0.2f  N/mm**2",sigma_s)
printf("\n STress in copper rod is %0.2f  N/mm**2",sigma_c)
