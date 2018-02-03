clear
//
//

//Initilization of Variables

D_s=20 //mm //Diameter of steel
D_Ci=20 //mm //Internal Diameter of Copper
t=5 //mm //THickness of copper bar
P=100*10**3 //N //Load
E_s=2*10**5 //N/mm**2 //modulus of elasticity of steel
E_c=1.2*10**5 //N/mm**2 //Modulus of Elasticity of Copper

//Calculations

A_s=%pi*4**-1*D_s**2 //mm**2 //Area of steel
D_Ce=D_s+2*t //mm //External Diameterof Copper Tube

A_c=%pi*4**-1*(D_Ce**2-D_Ci**2) //mm**2 //Area of Copper

//From static Equilibrium condition
//Let P_s and P_c be the Load shared by steel and copper in KN
//P_s+P_c=100 ....................................(1)

//From compatibility Equation,dell_l_s=dell_l_c
//P_s*L*(A_s*E_s)**-1=P_c*L*(A_c*E_c)**-1

//Substituting values in above Equation we get
//P_s=1.3333*P_C 

//Now Substituting value of P_s in Equation (1),we get
P_c=100*2.3333**-1 //KN
P_s=100-P_c //KN

//Stress in steel
sigma_s=P_s*10**3*A_s**-1 //N/mm**2   

//Stress in copper
sigma_c=P_c*10**3*A_c**-1 //N/mm**2

//Result
printf("\n Stresses Developed in Two material are:sigma_s %0.2f  N/mm**2",sigma_s)
printf("\n                                       :sigma_c %0.2f  N/mm**2",sigma_c)
