clear;
clc;
funcprot(0);

//Example - 10.17
//Page number - 356
printf("Example - 10.17 and Page number - 356\n\n");

//Given
P_1 = 1*10^(6);//[Pa] - Initial pressure
T_1 = 200 + 273.15;//[K] - Initial temperature
P_2 = 8*10^(6);//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant
Y = 1.4;// Index of expansion
Cp_0 = 29.114;//[J/mol-K]
// For H20, the van der Walls constants are
a = 0.55366;//[Pa-m^(6)/mol^(2)]
b = 3.049*10^(-5);//[m^(3)/mol]

// At state 1 (200 C, 1 MPa)
// The molar volume of steam following van der Walls equation of state (as reported in the book) is
V_1 = 3.816*10^(-3);//[m^(3)/mol]
// And the compressibility factor is 
Z_1 = (P_1*V_1)/(R*T_1);

// Assuming ideal gas behaviour the exit temperature is given by
T_2 = T_1*(P_2/P_1)^((Y-1)/Y);//[K]

// At 8 MPa and T_2,
// The molar volume of steam following van der Walls equation of state (as reported in the book) is
V_2 = 8.41*10^(-4);//[m^(3)/mol]
// And the compressibility factor is 
Z_2 = (P_2*V_2)/(R*T_2);

// For van der Walls equation of state we know that
// delta_S_R/R = log(Z_2/Z_1) + log((V_2 - b)/V_2) - log((V_1 - b)/V_1)
delta_S_R = R*(log(Z_2/Z_1) + log((V_2 - b)/V_2) - log((V_1 - b)/V_1));//[J/mol]

// delta_S_ig = Cp_0*log(T_2/T_1) - R*log(P_2/P_1)
// The entropy change is therefore
// delta_S = delta_S_ig + delta_S_R
// But during an isentropic process the total entropy change is zero
// Therefore we have to modify the exit temperature so that the entropy change is zero

// Let us assume a temperature, say T = 870 K
// At 870 K the molar volume of steam following van der Walls equation of state (as reported in the book) is
//  V_3 = 8.57*10^(-4);// [m^(3)/mol]
// Therefore
// Z_3 = (P_2*V_3)/(R*T_2);
// At this temperature,
// delta_S = Cp_0*log(T/T_1) - R*log(P_2/P_1) + R*(log(Z/Z_1) + R*log((V - b)/V) - R*log((V_1 - b)/V_1))

T = 800;//[K]
fault=10;

while(fault>0.3)
    // At T and 8 MPa
    deff('[y]=f1(V)','y=V^(3)-(b+(R*T)/P_2)*V^(2)+(a/P_2)*V-(a*b)/P_2');
    V = fsolve(1,f1);
    Z = (P_2*V)/(R*T);
    
    deff('[y]=f1(T)','y = Cp_0*log(T/T_1) - R*log(P_2/P_1) + R*(log(Z/Z_1) + R*(log((V - b)/V)) - R*(log((V_1 - b)/V_1)))');
    T_exit = fsolve(0.1,f1);
    fault=abs(T-T_exit);
    T = T + 0.5;
end
Texit = T;

// Now applying the first law to an adiabatic process we get
// W = - delta_H

// For van der Walls gas the enthalpy change is given by
delta_H_s = Cp_0*(T_exit - T_1) + (Z - 1)*R*T_exit - a/V - (Z_1-1)*R*T_1 + a/V_1;//[J/mol]
W = - delta_H_s;//[J/mol]

printf(" (1).The exit temperature is %f K\n",Texit);
printf("     The work required is given by, W = %f J/mol\n\n",W);

//(2)
eff = 0.8;// Adiabatic efficiency
delta_H_a = eff*delta_H_s;//[J/mol] - Actual enthalpy change
W_2 = - delta_H_a;

// Let us assume a temperature, say
T_prime= 900;//[K]
fault1=10;

while(fault1>0.3)
    // At T_prime and 8 MPa
    deff('[y]=f2(V)','y=V^(3)-(b+(R*T_prime)/P_2)*V^(2)+(a/P_2)*V-(a*b)/P_2');
    V_prime=fsolve(1,f2);
    Z_prime = (P_2*V_prime)/(R*T_prime);
    
    deff('[y]=f3(T_prime)','y = Cp_0*(T_prime - T_1) + (Z_prime - 1)*R*T_prime - a/V_prime - 13230.49');
    T_exit1 = fsolve(100,f3);
    fault1=abs(T_prime-T_exit1);
    T_prime = T_prime + 0.2;
end
Texit1 = T_prime;

printf(" (2).The exit temperature is %f K\n",Texit1);
printf("     The work required is given by, W = %f J/mol\n\n",W_2);


