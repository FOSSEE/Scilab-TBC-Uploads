clear;
clc;
printf("\t\t\tExample Number 8.21\n\n\n");
// influence of convection on solar equilibrium temperature 
// Example 8.21 (page no.-455) 
// solution

T_surr = 25+273;// [K] surrounding temperature
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
h = 10;// [W/square meter] heat transfer coefficient
// in this case the solar energy absorbed must equal the sum of the radiation and convection transfers to the surroundings
// (q_by_A_sun)*alpha_sun = alpha_low_temp*sigma*(T^4-T_surr^4)+h*(T-T_surr)         (a)
q_by_A_sun = 700;// [W/m^(2)] solar flux

// for the white paint, using the same surface properties as in example 8-20 gives 

alpha_sun = 0.12;
alpha_low_temp = 0.9;
// so that equation (a) becomes
deff('[y] = f(T)','y = (q_by_A_sun)*alpha_sun-alpha_low_temp*sigma*(T^4-T_surr^4)-h*(T-T_surr)');
T = fsolve(1,f);
printf("the radiation-convection equillibrium temperatures for case (a) is %f degree celsius",T-273);

//for flat black lacquer we obtain

alpha_sun = 0.96;
alpha_low_temp = 0.95;
// so that equation (a) becomes
deff('[y] = f2(T1)','y = (q_by_A_sun)*alpha_sun - alpha_low_temp*sigma*(T1^4-T_surr^4)-h*(T1-T_surr)');
T1 = fsolve(1,f2);
printf("\n\n the radiation-convection equillibrium temperatures for case (b) is %f degree celsius",T1-273);
printf("\n\n where case (a)     surface is coated with white paint");
printf("\n\n       case (b)     surface is coated with flat black lacquer");


