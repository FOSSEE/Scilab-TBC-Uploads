clear;
clc;

//Example - 4.12
//Page number - 163
printf("Example - 4.12 and Page number - 163\n\n");

//Given
P_1 = 140;//[kPa] - Initial pressure
T_1 = 20 + 273.15;//[K] - Initial temperature
P_2 = 560;//[kPa] - Final pressure
eff = 0.75;// Compressor efficiency
R = 1.987;//[cal/mol*K] - Universal gas constant
// Cp_0 = 4.750 + 1.200*10^(-2)*T + 0.3030*10^(-5)*T^(2) - 2.630*10^(-9)*T^(3), here T is in K and Cp_0 is in  cal/mol-K
a = 7.7;
b = 0.04594*10^(-2);
c = 0.2521*10^(-5);
d = - 0.8587*10^(-9);

// At 20 C,as reported in the book
Cp_0 = 8.46;//[cal/mol-K] - Specific heat capacity at constant pressure
Cv_0 = Cp_0 - R;//[cal/mol-K] - Specific heat capacity at constant volume
Y = Cp_0/Cv_0;// Index of expansion

// Assuming 100 % efficiency,for reversible and adiabatic process the final temperature is given by
// P*V^(Y) = constant or, P*((R*T)/P)^(Y) = constant
T_2 = ((P_1/P_2)^((1-Y)/Y))*T_1;//[K]

// Since at final temperature the value of heat capacity ratio would have changed 
// So let us determine Y at mean temperature and then calculating final temperature
T_mean = (T_1 + T_2)/2;//[K]

// At T_mean,as reported in the book
Cp_0_new = 9.153;//[cal/mol-K]
Cv_0_new = Cp_0_new - R;//[cal/mol-K]
Y_new = Cp_0_new/Cv_0_new;
T_2_new = T_1*((P_1/P_2)^((1-Y_new)/Y_new));//[K]

// The enthalpy change is given by 
delta_H = integrate('4.750+1.200*10^(-2)*T+0.3030*10^(-5)*T^(2)-2.630*10^(-9)*T^(3)','T',T_1,T_2_new);//[cal/mol]

//For adiabatic process
W = - delta_H;//[cal/mol]
// Now actual work done on the system is given by 
W_a = W/eff;//[cal/mol]

// Since the actual process is adiabatic the work done is change in negative of enthalpy
// Therefore actual change in enthalpy is - W_a, or
// - W_a = 4.750*(T_2-T_1) + (1.2*10^(-2)/2)*(T_2^(2)-T_1^(2)) + (0.3030*10^(-5)/3)*(T_2^(3)-T_1^(3)) - (2.63*10^(-9)/4)*(T_2^*(4)-T_1^(4));
// Solving for T_2 in the above equation
deff('[y]=f1(T_2_prime)','y=4.750*(T_2_prime-T_1)+((1.2*10^(-2))/2)*(T_2_prime^(2)-T_1^(2))+((0.3030*10^(-5))/3)*(T_2_prime^(3)-T_1^(3))-((2.63*10^(-9))/4)*(T_2_prime^(4)-T_1^(4))+W_a');
T_2_prime=fsolve(100,f1);

printf(" The required work is %f cal/mol\n",W_a);
printf(" The discharge temperature of methane is %f K\n",T_2_prime);



