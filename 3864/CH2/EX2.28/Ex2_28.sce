clear
//

//Initilization of Variables

L=9 //m //Length of rigid bar
L_b=3000 //Length of bar
A_b=1000 //mm**2 //Area of bar
E_b=1*10**5 //N/mm**2 //Modulus of Elasticity of brasss bar
L_s=5000 //mm //Length of steel bar
A_s=445 //mm**2 //Area of steel bar
E_s=2*10**5 //N/mm**2 //Modulus of elasticity of steel bar
P=3000 //N //Load

//Calculations

//From static equilibrium Equation of the rod after appliying Load is
//P_b+P_s=P   ......................(1)

//P_b=1.8727*P_s ..................(2)

//NOw substituting equation 2 in equation 1 we get
P_s=P*2.8727**-1
P_b=P-P_s

d=P_s*L*P**-1  

//Result
printf("\n Distance at which Load applied even after which bar remains horizontal is %0.2f  m",d)
