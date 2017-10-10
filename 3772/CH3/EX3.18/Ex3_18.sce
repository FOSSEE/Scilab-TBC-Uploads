// Problem 3.18,Page no.66

clc;clear;
close;

t_1=15 //degree celsius //temperature of steel bar
t_2=315 //degree celsius //raised temperature 
E_s=210 //GPa //Modulus of Elasticity of steel bar
E_c=100 //GPa //Modulus of Elasticity of copper bar
dell_L=0.15 //cm //Increase in Length of bar

//Calculation

//For Equilibrium of the system, Tension in steel bar = Tension in copper bar
//sigma_s*A_s = sigma_c*2*A_c
//sigma_S=2*sigma_c

//Actual expansion of steel = Actual expansion of copper
//L*alpha_s*T+sigma_s*E_s**-1*L = L*alpha_c*T-sigma_c*E_c**-1*L (Equation 1)

T=t_2-t_1 //per degree celsius //change in temperature

//After substituting values in above equation and simplifying we get
sigma_c=(1650*10**5*1.9524**-1)*10**-6 //MN/m**2 //Stress in copper
sigma_s=2*sigma_c //MN/m**2 //Stress in steel

//Actual Expansion of steel bar 
//L*alpha_s*T+sigma_s*E_s**-1*L = L*alpha_c*T-sigma_c*E_c**-1*L 
//After substituting values in above equation and simplifying we get
L=0.15*10**-2*0.0044048**-1 //m

//Result
printf("Stress in copper bar is %.2f MN/m^2",sigma_c)
printf("\n Stress in steel bar is %.2f MN/m^2",sigma_s)
printf("\n Original Length of bar is %.2f m",L)
