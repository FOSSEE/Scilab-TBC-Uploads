clear;
clc;

//Example - 3.3
//Page number - 83
printf("Example - 3.3 and Page number - 83\n\n");

//Given
M_vap_sat = 0.22;//[kg] - mass of saturated vapour
M_liq_sat = 1.78;//[kg] - mass of saturated liquid
P = 700;//[kPa] - Pressure

//At P=700 kPa,the systen is saturated,from steam table as reported in the book
T_sat1 = 164.97;//[C]
V_liq_1 = 0.001108;//[m^(3)/kg] 
V_vap_1 = 0.2729;//[m^(3)/kg]
Vt_1 = V_liq_1*M_liq_sat + V_vap_1*M_vap_sat;//[m^(3)] - total volume

//At final state,P = 8 MPa
T_sat2 = 295.06;//[C]
V_liq_2 = 0.001384;//[m^(3)/kg] 
V_vap_2=0.02352;//[m^(3)/kg]
Vt_2 = Vt_1;// Since the volume is rigid.
// Since the volume of 2 kg of vapour is 0.062 [m^(3)]
V = Vt_2/2;//[m^(3)/kg] - specific volume

// (a)
// From steam table at 8 [MPa]and 350 [C],V=0.02995[m^(3)/kg]; 
V_1 = 0.02995;//[m^(3)/kg]
// And at 8 [MPa]and 400 [C],
V_2 = 0.03432;//[m^(3)/kg]
// By interpolation,
T = ((V-V_1)/(V_2 - V_1))*(400-350)+350;
printf(" (a).The final temperature is %f c\n",T);

// (b)
// From steam table 
U_1 = 2747.7;//[kJ/kg]
H_1 = 2987.3;//[kJ/kg]
// And at 8 [MPa]and 400 C,
U_2 = 2863.8;//[kJ/kg]
H_2 = 3138.3;//[kJ/kg]
// Therefore at T = 362.01 C
U = U_1+((U_2 - U_1)/(400 - 350))*(T - 350);
printf(" (b).The internal energy is %f kJ/kg\n",U);

//(c)
H = H_1+((H_2 - H_1)/(400 - 350))*(T - 350);
printf(" (b).The enthalpy is %f kJ/kg\n",H);

