// Problem 3.17,Page no.65

clc;clear;
close;

D=4.5 //cm //External Diameter of tube
d=3 //cm //Internal diameter of tube
t=3 //mm //thickness of tube
t_1=30 //degree celsius
t_2=180 //degree celsius //when metal heated
L=30 //cm //Original LEngth
alpha_s=1.08*10**-5 //Per degree celsius //coefficient of Linear expansion of steel tube
alpha_c=1.7*10**-5 //Per degree celsius //coefficient of Linear expansion of copper tube
E_s=210 //GPa //Modulus of Elasticity of steel 
E_c=110 //GPA //Modulus of Elasticity of copper

//Calculation

//For Equilibrium of the system, Total tension in steel=Total tension in copper

//sigma_s*A_s=sigma_c*A_c (equation 1)

A_c=%pi*4**-1*d**2 //cm**2 //Area of copper
A_s=%pi*4**-1*(D**2-d**2) //cm**2 //Area of steel

//simplifying equation 1
//sigma_s=1.785*sigma_c

T=t_2-t_1 //change in temperature

//Actual expansion of steel=Actual expansion of copper
//alpha_s*T*L+sigma_s*E_s**-1*L=alpha_c*T*L-sigma_c*E_c**-1*L

//After substituting values in above equation and simplifying we get

sigma_c=(930*10**5*1.7591**-1)*10**-6 //MN/m**2 //Stress in copper
sigma_s=1.785*sigma_c //MN/m**2 //Stress in steel

//Increase in Length of either component
L_2=(alpha_s*T+sigma_s*10**6*(E_s*10**9)**-1)*L

//Result
printf("stress in copper bar is %.2f MN/m^2",sigma_c)
printf("\n stress in steel bar is %.2f MN/m^2",sigma_s)
printf("\n Increase in Length is %.3f cm",L_2)
