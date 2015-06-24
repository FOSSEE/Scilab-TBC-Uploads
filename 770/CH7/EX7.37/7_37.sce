clear;
clc;

//Example - 7.37
//Page number - 270
printf("Example - 7.37 and Page number - 270\n\n");

//Given
T_1 = 298.15;//[K] - Standard reaction temperature
delta_H_gas = -52.23;//[kcal/mol] - Enthalpy of formation of C2H5OH(gas)
delta_H_liq = -66.35;//[kcal/mol] - Enthalpy of formation of C2H5OH(liq)

// For ethanol(g) [T is in K and Cp_0 in cal/mol-K]
// Cp_0 = 4.75 + 5.006*10^(-2)*T - 2.479*10^(-5)*T^(2) + 4.79*10^(-9)*T^(3)

// For ethanol(l) [T is in K and Cp_0 in cal/mol-K]
// Cp_0 = 67.29 - 0.343*T - 6.94*10^(-4)*T^(2)

// The vaporization of a liquid can be written as C2H5OH(liq) - C2H5OH(gas)
// Since the pressure is 1 atm therefore the standard data can be used
delta_H_298 = delta_H_gas - delta_H_liq;//[kcal/mol]
delta_H_298 = delta_H_298*1000;//[cal/mol]
delta_a = 4.75 - 67.29;
delta_b = 5.006*10^(-2) - (-0.343);
delta_c = -2.479*10^(-5) - 6.94*10^(-4);
delta_d = 4.79*10^(-9);

// The standard enthalpy of vaporization at a temperature T is given by
// delta_H_T =  delta_H_298 + integrate('delta_a + delta_b*T + delta_c*T^(2) + delta_d*T^(3)','T',T_1,T);//[cal/mol]

// Therefore the standard enthalpy of vaporization at a temperature T = 283 K is given by
T_2 = 283;//[K]
delta_H_283 =  delta_H_298 + integrate('delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3)','T',T_1,T_2);//[cal/mol]

// Therefore the standard enthalpy of vaporization at a temperature T = 348 K is given by
T_3 = 348;//[K]
delta_H_348 =  delta_H_298 + integrate('delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3)','T',T_1,T_3);//[cal/mol]

// From the values of standard enthalpy of vaporization obtained above at 283, 298, and 348 K, it is clear that enthalpy decreases with increase in temperature
printf(" The value of enthalpy of vaporization at 283 K is %f cal/mol\n",delta_H_283);
printf(" The value of enthalpy of vaporization at 298.15 K is %f cal/mol\n",delta_H_298);
printf(" The value of enthalpy of vaporization at 348 K is %f cal/mol\n",delta_H_348);
printf(" Therefore standard enthalpy of vaporization decrease with the increase in temperature\n\n");

// Solving the above equatio manually we get,
// delta_H_vap = 1.1975*10^(-9)*T^(4) - 2.396*10^(-4)*T^(3) + 0.1965*T^(2) - 62.54*T + 21639.54 
// Solving for 'T' at which 'delta_H_vap' = 0
deff('[y]=f(T)','y=1.1975*10^(-9)*T^(4)-2.396*10^(-4)*T^(3)+0.1965*T^(2)-62.54*T + 21639.54');
T_0 = fsolve(500,f);//[J/mol]

// We know that at critical point (critical temperature and critical pressure) the enthalpy of vaporization is zero.
// Here we have made the standard enthalpy of vaporization equal to zero which is at standard pressure of 1 atm.
// Therefore following conclusions can be drawn
printf(" The temperature obtained by equating standard enthalpy of vaporization equal to zero is %f K\n",T_0);
printf(" But the critical temperature of ethanol is 513.9 K, which is far from the temperature obtained above\n")
printf(" Therefore the temperature obtained by equating standard enthalpy of vaporization equal to zero is not the critical temperature")


