clear;
clc;
funcprot(0);

// Example - 16.1
// Page number - 564
printf("Example - 16.1 and Page number - 564\n\n");

// Given
T = 0 + 273.15;//[K] - Temperature
P = 20*10^(5);//[Pa] - Pressure
R = 8.314;//[J/mol*K] - Universal gas constant

//componenet 1 : methane (1)
//componenet 2 : methanol (2)

H_constant = 1022;//[bar] - Henry's law constant
H_constant = H_constant*10^(5);//[Pa]

// The second virial coefficients are
B_11 = -53.9;//[cm^(3)/mol]
B_11 = B_11*10^(-6);//[m^(3)/mol]
B_12 = -166;//[cm^(3)/mol]
B_12 = B_12*10^(-6);//[m^(3)/mol]
B_22 = -4068;//[cm^(3)/mol]
B_22 = B_22*10^(-6);//[m^(3)/mol]

den_meth = 0.8102;//[g/cm^(3)] - Density of methanol at 0 C
Mol_wt_meth = 32.04;// Molecular weight of methanol
P_2_sat = 0.0401;//[bar] - Vapour pressure of methanol at 0 C

//The molar volume of methanol can be calculated as
V_2_liq = (1/(den_meth/Mol_wt_meth))*10^(-6);//[m^(3)/mol]

//The phase equilibrium equation of the components at high pressure
//y1*phi_1*P = x_1*H_1
//y2*phi_2*P = x_2*H_2

//Since methane follows Henry's law therefore methanol follows the lewis-Rnadall rule
//f_2 is the fugacity of the compressed liquid which is calculated using
//f_2 = f_2_sat*exp[V_2_liq*(P - P_sat_2)/(R*T)]
//where f_2_sat can be calculated using virial equation 
// log(phi_2_sat) = log(f_2_sat/P_2_sat) = (B_22*P_2_sat)/(R*T)

f_2_sat = P_2_sat*exp((B_22*P_2_sat*10^(5))/(R*T));//[bar]

//Putting the value of 'f_2_sat' in the expression of f_2 , we get
f_2 = f_2_sat*exp(V_2_liq*(P - P_2_sat*10^(5))/(R*T));//[bar]

//Now let us calculate the fugacity coefficients of the species in the vapour mixture
del_12 = 2*B_12 - B_11 - B_22;//[m^(3)/mol]

//log(phi_1) = (P/(R*T))*(B_11 + y2^(2)*del_12)
//log(phi_2) = (P/(R*T))*(B_22 + y1^(2)*del_12)


//The calculation procedure is to assume a value of y1, calculate 'phi_1' and 'phi_2' and calculate 'x_1' and 'x_2' from the phase equilibrium equations and see whether x_1 + x_2 = 1,if not then another value of y1 is assumed.

y2 = 0.1;
error=10;

while(error>0.001)
    y1=1-y2;
    phi_1 = exp((P/(R*T))*((B_11 + y2^(2)*del_12)));
    phi_2 = exp((P/(R*T))*((B_22 + y1^(2)*del_12)));
    x_1 = (y1*phi_1*P)/H_constant;
    x_2 = (y2*phi_2*P)/(f_2*10^(5));
    x = x_1 + x_2;
    error=abs(1-x);
    y2=y2 - 0.000001;
end

printf(" The solubility of methane in methanol is given by x1 = %f\n",x_1);


