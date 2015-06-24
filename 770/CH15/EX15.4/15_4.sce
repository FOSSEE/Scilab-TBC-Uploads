clear;
clc;

//Example - 15.4
//Page number - 519
printf("Example - 15.4 and Page number - 519\n\n");

//Given
T = 120;//[C] - Temperature
P_1 = 1;//[atm] - Initial pressure
P_1 = P_1*101.325;//[kPa]
R = 8.314;//[J/mol*K] - Universal gas constant

y_1 = 0.3;// Mole fraction of propane
y_2 = 0.5;// Mole fraction of butane
y_3 = 0.2;// Mole fraction of hexane

// log(P_1_sat) = 13.7713 - 1892.47/(t + 248.82)
// log(P_2_sat) = 13.7224 - 2151.63/(t + 236.91)
// log(P_3_sat) = 13.8216 - 2697.55/(t + 224.37)

//(a)
P_1_sat = exp(13.7713 - 1892.47/(T + 248.82));
P_2_sat = exp(13.7224 - 2151.63/(T + 236.91));
P_3_sat = exp(13.8216 - 2697.55/(T + 224.37));

// Since vapour phase composition is given we can use the relation,
P_2 = 1/(y_1/P_1_sat + y_2/P_2_sat + y_3/P_3_sat);//[kPa]

printf(" (a).The pressure of the mixture when first drop condenses is given by, P = %f kPa\n\n",P_2);

//(b)
x_1 = (y_1*P_2)/P_1_sat;
x_2 = (y_2*P_2)/P_2_sat;
x_3 = (y_3*P_2)/P_3_sat;

printf(" (b).The liquid phase composition is given by, x_1 (propane) = %f, x_2 (butane) = %f and x_3 (hexane) = %f \n\n",x_1,x_2,x_3);

// (c)
// Work transfer per mol is given by
// W = integral(P*dV) = integral((R*T/V)*dV) = R*T*log(V_2/V_1) = R*T*log(P_1/P_2)
w = R*(T+273.15)*log(P_1/P_2);//[J/mol]
// For 100 mol
W = w*100;//[J]
W = W*10^(-3);//[kJ]
printf(" (c).The work required for 100 mol of mixture handeled is %f kJ",W);





