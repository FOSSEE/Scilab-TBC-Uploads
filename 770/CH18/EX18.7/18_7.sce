clear;
clc;

//Example - 18.7
//Page number - 656
printf("Example - 18.7 and Page number - 656\n\n");

// Given
T_1 = 400 + 273.15;//[K]
// SO2(g) + 1/2*(O2) (g) - SO3 (g)

a_SO2 = 6.157;
a_SO3 = 3.918;
a_O2 = 6.085;
a_N2 = 6.903;
b_SO2 = 1.384*10^(-2);
b_SO3 = 3.483*10^(-2);
b_O2 = 0.3631*10^(-2);
b_N2 = -0.03753*10^(-2);
c_SO2 = -0.9103*10^(-5);
c_SO3 = -2.675*10^(-5);
c_O2 = -0.01709*10^(-5);
c_N2 = 0.1930;
d_SO2 = 2.057*10^(-9);
d_SO3 = 7.744*10^(-9);
d_O2 = 0.3133*10^(-9);
d_N2 = -0.6861*10^(-9);

// At 400 C, from the given expressions
delta_H_rkn_T_1 = -22630.14 - 5.2815*T_1 + 0.9587*10^(-2)*T_1^(2) - 0.5598*10^(-5)*T_1^(3) + 1.3826*10^(-9)*T_1^(4);//[cal]
// This is the standard enthalpy change of reaction for 1 mol of SO2 reacted. Since X moles of SO2 are reactants therefore 
// delta_H_rkn_T_X (for X moles of SO2 reacted) = delta_H_rkn_T_1*X

// Let the number of moles at equilibrium be
// n_O2 = 9-0.5*X
// n_SO2 =  12-X
// n_SO3 = X
// n_N2 = 79
// Total moles at equilibrium = 100-0.5X
// Ky = y_SO3/(y_SO2*y_O2^(1/2))
// Ky = (X*(100-0.5*X)^(1/2))/((12-X)*(9-0.5*X)^(1/2))
// We know that K = Ky*Kp. Since P = 1 atm, therefore Ky = K

// Now we have to account for the heat required to raise 9-0.5*X mol of O2, 12-X mol of SO2, X mol of SO3 and 79 mol of N2 from T to ART
// sum_ni_Cp_i = (12-X)*(a + b*T + c*T^(2) + d*T^(3)) + (9-0.5*X)*(a + b*T + c*T^(2) + d*T^(3)) + X*(a + b*T + c*T^(2) + d*T^(3)) + 79*(a + b*T + c*T^   (2) + d*T^(3))

// From energy balance equation we get
// delta_H_rkn_T_1 + integrate('sum_ni_Cp_i','T',T_1,T)
// The above equation on simplification becomes
// (673.99-5.2815*X)*(T-T_1) + (16.91+1.9175*X)*(10^(-2)/2)*(T^(2)-T_1^(2)) + (2.79-1.6793*X)*(10^(-5)/3)*(T^(3)-T_1^(3)) + (-26.70+5.5304*X)*(10^(-9)   /4)*(T^(4)-T_1^(4)) = delta_H_rkn_T_1*X

// Let us assume a temperature, say
T = 800;//[K]
fault = 10;

while(fault>0.01)
    K = exp(3.87 + (11389.10/T) - 2.6580*log(T) + 0.4825*10^(-2)*T - 0.1409*10^(-5)*T^(2) + 0.2320*10^(-9)*T^(3));
    deff('[y]=f(X)','y= K - (X*(100-0.5*X)^(1/2))/((12-X)*(9-0.5*X)^(1/2))');
    X1 = fsolve(0.1,f);// X from equilibrium equation
    deff('[y]=f1(X)','y= (673.99-5.2815*X)*(T-T_1)+(16.91+1.9175*X)*(10^(-2)/2)*(T^(2)-T_1^(2))+(2.79-1.6793*X)*(10^(-5)/3)*(T^(3)-T_1^(3))+(-26.70+5.5304*X)*(10^(-9)/4)*(T^(4)-T_1^(4))+delta_H_rkn_T_1*X');
    X2 = fsolve(1,f1);// X from energy balance equation
    fault = abs(X1-X2);
    T = T + 0.01;
end

printf(" The moles of SO2 reacted are %f mol\n\n",X1);
printf(" The adiabatic reaction temperature is %f K\n",T);

