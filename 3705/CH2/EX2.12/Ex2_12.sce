
clear//

//Variable Declaration
P=6000 //Force in lb
Est=29*10**6 //Modulus of elasticity of steel in psi
L1=24 //Length in inches
L2=36 //Length in inches
alpha_1=6.5*10**-6 //coefficient of thermal expansion in /degree F of steel
alpha_2=10**-5 //coefficient of thermal expansion in /degree F of bronze
As=0.75 //Area os steel in sq.in

//Calculations
delta_T=((P*L1)/(Est*As))/(alpha_2*L2-alpha_1*L1) //Change in temperature in degree F

printf("\n The change in the Temperature is %0.1f F",delta_T)
