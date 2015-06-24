clear;
clc;

//Example - 16.14
//Page number - 586
printf("Example - 16.14 and Page number - 586\n\n");

//Given
R = 8.314;//[J/mol*K] - universal gas constant
T = 350;//[K] - Surrounding temperature

//componenet 1 : organic solid (1)
//componenet 2 : CO2 (2)

P_1_sat = 133.3;//[N/m^(2)] - Vapour pressre of organic solid
V_s_1 = 200;//[cm^(3)/mol] - Molar volume of organic solid
V_s_1 = V_s_1*10^(-6);//[m^(3)/mol]

///At 350 K, the values of the coefficients 
B_11 = -500;//[cm^(3)/mol]
B_22 = -85;//[cm^^(3)/mol]
B_12 = -430;//[cm^(3)/mol]

//From phase equilibrium equation of component 1, we get
// y1*P*phi_1 = f_1
// f_1 = f_1_sat*exp(V_s_1*(P-P_1_sat)/(R*T))

//Since vapour pressure of organic solid is very small, therefore
f_1_sat = P_1_sat;

// Now let us determine the fugacity coefficient of organic solid in the vapour mixture.
// log(phi_1) = (P/(R*T))*(B_11 + y2^(2)*del_12) 
del_12 = (2*B_12 - B_11 - B_22)*10^(-6);//[m^(3)/mol]

//It is given that the partial pressure of component 1 in the vapour mixture is 1333 N?m^(2)
// y1*P = 1333 N/m^(2) or, y1 = 1333/P
// y2 = 1- 1333/P
// log(phi_1) = (P/(R*T))*(B_11 + (1- 1333/P)^(2)*del_12)

//The phase equilibrium equation becomes
// y1*P*phi_1 = f_1_sat*exp(V_s_1*(P-P_1_sat)/(R*T))
//Taking log on both side we have
// log(y1*P) + log(phi_1) = log(f_1_sat) + (V_s_1*(P-P_1_sat)/(R*T))
// (V_s_1*(P-P_1_sat)/(R*T)) - log(phi_1) = log(1333/133.3) = log(10)

//substituting for log(phi_1) from previous into the above equation we get
// (V_s_1*(P-P_1_sat)/(R*T)) - (P/(R*T))*(B_11 + (1- 1333/P)^(2)*del_12) - log(10) = 0
// On simplification we get,
// 975*P^(2) - 6.7*10^(9)*P + 4.89*10^(8) = 0
// Solving the above qyadratic equation using shreedharcharya rule

P3 = (6.7*10^(9) + ((-6.7*10^(9))^(2)-4*975*4.98*10^(8))^(1/2))/(2*975);//[Pa]
P4 = (6.7*10^(9) - ((-6.7*10^(9))^(2)-4*975*4.98*10^(8))^(1/2))/(2*975);//[Pa]
// The second value is not possible, therefore pressure of the system is P3
P3 = P3*10^(-5);//[bar]

printf(" The total pressure of the system is %f bar",P3);


