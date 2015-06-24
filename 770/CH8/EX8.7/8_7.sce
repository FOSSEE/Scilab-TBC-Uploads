clear;
clc;

//Example - 8.7
//Page number - 292
printf("Example - 8.7 and Page number - 292\n\n");

//Given
m = 0.6;//[kg/s] - mass flow rate
T_low = -20+273.15;//[K] - Temperature at which vapour enters the compressor
T_high = 30+273.15;//[K] - Temperature at which vapour leaves the condenser

//From saturated refrigeration-12 tables we get,at -20 C
H_1 = 178.74;//[kJ/kg] - (H_1 = H_vap)
P_1 = 0.15093;//[MPa] - (P_1 = P_sat)
P_4 = P_1;
S_1 = 0.7087;//[kJ/kg-K] - (S_1 = S_vap)
S_2 = S_1;

//At 30 C
P_2 = 0.7449;//[MPa] - (P_2 = P_sat)
P_3 = P_2;
H_3 = 64.59;//[kJ/kg] - (H_3 = H_liq)
H_4 = H_3;
S_3 = 0.24;//[kJ/kg-K] - (S_3 = S_liq)

//It is assumed that presssure drop in the evaporator and condenser are negligible. The heat transfer rate in the evaporator is
Q_L = m*(H_1 - H_4);

printf("The heat transfer rate in the evaporator is %f kW\n\n",Q_L);

//At state 2 (P = 0.7449 MPa and S = 0.7087 kJ/kg-K) and looking in the superheated tables we have to calculate the enthalpy at state 2

//At P = 0.7 MPa and S = 0.6917 kJ/kg-K,
H_11 = 200.46;//[kJ/kg]

//At P = 0.7 MPa and S = 0.7153 kJ/kg-K,
H_12 = 207.73;//[kJ/kg]

//Thus at P = 0.7 MPa and S = 0.7087 kJ/kg-K, enthalpy is given by
H_13 = ((S_2 -0.6917)/(0.7153 - 0.6917))*(H_12 - H_11) + H_11;//[kJ/kg]

//At P = 0.8 MPa and S = 0.7021 kJ/kg-K,
H_21 = 206.07;//[kJ/kg]

//At P = 0.8 MPa and S = 0.7253 kJ/kg-K,
H_22 = 213.45;//[kJ/kg]

//Thus at P = 0.8 MPa and S = 0.7087 kJ/kg-K, enthalpy is given by
H_23 = ((S_2 -0.7021)/(0.7253 - 0.7021))*(H_22 - H_21) + H_21;//[kJ/kg]

//At P = 0.7449 MPa, S = 0.7087 kJ/kg-K, the enthalpy is
H_2 = ((0.7449 - 0.7)/(0.8 - 0.7))*(H_23 - H_13) + H_13;//[kJ/kg]

//Power consumed by the compressor is
W_comp = m*(H_2 - H_1);//[kW]

printf("The power consumed by the compressor is %f kW\n\n",W_comp);

//Heat removed in evaporator/work done on compressor
COP_R = Q_L/W_comp;

printf("The COP the refrigerator is %f kW\n\n",COP_R);


//At -20 C,saturated conditions 
H_liq = 17.82;//[kJ/kg]
H_vap = 178.74;//[kJ/kg]
x_4 = (H_4 - H_liq)/(H_vap - H_liq);

printf("The dryness factor of refrigerant after the expansion valve is %f\n\n",x_4);

//The heat transfer rate in the condenser is
Q_H = m*(H_3 - H_2);//[kW]

printf("The heat transfer rate in the condenser is %f kW\n\n",Q_H);

//If the cycle would have worked as a pump then,
//COP_HP = (Heat supplied from condenser/Work done on compressor)
COP_HP = (-Q_H)/W_comp;

printf("The COP if cycle would work as a heat pump is %f kW\n\n",COP_HP);

//If the cycle would have been a reversed Carnot cycle then
COP_C = T_low/(T_high - T_low);

printf("The COP if cycle would run as reversed Carnot cycle is %f kW\n\n",COP_C);
