clear;
clc;

//Example - 8.1
//Page number - 287
printf("Example - 8.1 and Page number - 287\n\n");

//Given
P_1 = 30;//[bar]
P_2 = 0.04;//[bar]

//(1).Carnot cycle
//It has been reported in the book that at 30 bar pressure (saturated) :
H_liq_1 = 1008.42;//[kJ/kg]
H_vap_1 = 2804.2;//[kJ/kg]
S_liq_1 = 2.6457;//[kJ/kg-K]
S_vap_1 = 6.1869;//[kJ/kh-K]
//Therefore, H_1 = H_liq_1, H_2 = H_vap_1, S_1 = S_liq_1 and S_2 = S_vap_1
H_1 = H_liq_1;
H_2 = H_vap_1;
S_1 = S_liq_1;
S_2 = S_vap_1;

//At 0.04 bar pressure (saturated) :
H_liq_2 = 121.46;//[kJ/kg]
H_vap_2 = 2554.4;//[kJ/kg]
S_liq_2 = 0.4226;//[kJ/kg-K]
S_vap_2 = 8.4746;//[kJ/kh-K]

//Dryness fraction at state 3 can be found the fact that S_3 = S_2 
x_3 = (S_2 - S_liq_2)/(S_vap_2 - S_liq_2);
H_3 = H_liq_2*(1 - x_3) + x_3*H_vap_2;//[kJ/kg]

//Dryness fraction at state 4 can be found the fact that S_4 = S_1
x_4 = (S_1 - S_liq_2)/(S_vap_2 - S_liq_2);
H_4 = H_liq_2*(1 - x_4) + x_4*H_vap_2;//[kJ/kg]

//Work done by turbine W_tur = -delta_H = -(H_3 - H_2)
W_tur = H_2 - H_3;//[kJ/kg]

//Work supplied by boiler,
q_H = H_2 - H_1;//[kJ/kg]

//Work transfer in compressor is given by
W_com = -(H_1 - H_4);//[kJ/kg]

//Efficiency can now be calculated as
//n = (Net work done/Work supplied by boiler)
n_carnot = (W_tur + W_com)/q_H;

//Efficiency of the Carnot cycle can also be determined from the formula
// n = 1 - (T_L/T_H), Where T_L is saturated temperature at 0.04 bar and T_H is saturated temperature at 30 bar

printf("(1).Carnot cycle\n\n");
printf("The work done by the turbine is %f kJ/kg\n\n",W_tur);
printf("The heat transfer in the boiler is %f kJ/kg\n\n",q_H);
printf("The cycle efficiency is %f\n\n\n",n_carnot);

//(2).Rankine cycle
//The enthalpies at state 2 and 3 remain as in the Carnot cycle
//Saturated liquid enthalpy at 0.04 bar is 
H_4_prime = H_liq_2;

//Saturated liquid volume at 0.04 bar as reported in the book is
V_liq = 0.001004;//[m^(3)/kg]
//Work transfer in pump can be calculated as
W_pump = -V_liq*(P_1 - P_2)*100;//[kJ/kg]

//Work transfer around pump gives, W_pump = -delta_H =  -(H_1_prime - H_4_prime);
H_1_prime = H_4_prime - W_pump;//[kJ/kg]

//Heat supplied to boiler is
q_H_prime = H_2 - H_1_prime;//[kJ/kg]

//Work done by turbine is
W_tur_prime = H_2 - H_3;//[kJ/kg]

//Efficiency can now be calculated as
//n = (Net work done/Heat input)
n_rankine = (W_tur_prime + W_pump)/q_H_prime;//

printf("(2).Rankine cycle\n\n");
printf("The work done by the turbine is %f kJ/kg\n\n",W_tur_prime);
printf("The heat transfer in the boiler is %f kJ/kg\n\n",q_H_prime);
printf("The cycle efficiency is %f",n_rankine);
