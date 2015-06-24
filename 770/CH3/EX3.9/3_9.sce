clear;
clc;

//Example - 3.9
//Page number - 93
printf("Example - 3.9 and Page number - 93\n\n");

//Given
m_ice = 1000;//[g] - Mass of ice
m_water = 1000;//[g] - Mass of water
T_ice = 273.15;//[K] - Temperature of ice
T_water = 373.15;//[K] - Temperature of water
L = 79.71;//[cal/g] - Latent heat of melting of ice.

//(1)
Cp_1 = 1;//[cal/g-K] - Heat capacity at constant pressure
// Let the final temperature be T
// We assume that all of the ice melts.Energy taken up by ice is
// E1 = L*m_ice + m_ice*Cp_1*(T - T_ice)
// Energy given by hot water is,
// E2 = m_water*Cp_1*(T_water - T)
// No heat exchange with surrounding.Solving for T
T_1 = (m_ice*Cp_1*T_ice + m_water*Cp_1*T_water - L*m_ice)/(m_ice*Cp_1 + m_water*Cp_1);//[K]
T_1 = T_1 - 273.15;//[C]

printf(" (1).The final temperature (taking Cp_water = 1 cal/g-K) is %f C\n",T_1);
//Since the final temperature is greater than 273.15 K,so our assumption that all of ice melts is correct

// (2)
// Cp_2 = 1.00874-0.7067*10^(-3)*T+15.93*10^(-6)*T^(2)-83.8*10^(-9)*T^(3);
// From energy balance,we get L*m_ice + m_ice*integrate('Cp_2','T',0,T) + m_water*integrate('Cp_2','T',100,T) = 0;  (where T is in C)
// On putting the values and then simplifying we get
// 2.01748*T - 0.0007067*T^(2) + 1.062*10^(-5)*T^(3) - 4.19*10^(-8)*T^(4) - 20.8455 = 0
// Solving the above equation we get
deff('[y]=f1(T)','y = 2.01748*T - 0.0007067*T^(2) + 1.062*10^(-5)*T^(3) - 4.19*10^(-8)*T^(4) - 20.8455');
T_0 = fsolve(1,f1);//[C]
printf(" (2).The final temperature using specific heat capacity equation is %f C\n",T_0);

