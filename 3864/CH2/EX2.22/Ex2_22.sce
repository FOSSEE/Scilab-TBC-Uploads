clear
//

//Initilization of Variables

A_a=50*20 //mm //Area of aluminium strip
A_s=50*15 //mm //Area of steel strip
P=50*10**3 //N //Load
E_a=1*10**5 //N/mm**2 //Modulus of aluminium 
E_s=2*10**5 //N/mm**2 //Modulus of steel

//Calculations

//Let P_a and P_s br the Load shared by aluminium and steel strip
//P_a+P_s=P     ..................(1)

//For compatibility condition,dell_l_a=dell_l_s
//P_a*L_a*(A_a*E_a)**-1=P_s*L_s*(A_s*E_s)**-1    .....(2)

//As L_a=L_s we get
//P_s=1.5*P_a   .................(3)
   
//From Equation 1 and 2 we get
P_a=P*2.5**-1

//Substituting in equation 1 we get
P_s=P-P_a

//stress in aluminium strip 
sigma_a=P_a*A_a**-1

//stress in steel strip
sigma_s=P_s*A_s**-1

//Now from the relation we get

//result
printf("\n Stress in  Aluminium strip is %0.2f  N/mm**2",sigma_a)
printf("\n Stress in  steel strip is %0.2f  N/mm**2",sigma_s)
