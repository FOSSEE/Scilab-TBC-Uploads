clear;
clc;

//Example - 1.14
//Page number - 31
printf("Example - 1.14 and Page number - 31\n\n");

//Given
//(a)
P_1 = 0.2;// [MPa] - pressure
x_1 = 0.59;// mole fraction

//From saturated steam tables at 0.2 MPa
H_liq_1 = 504.7;// [kJ/kg] - Enthalpy of saturated liquid
H_vap_1 = 2706.7;// [kJ/kg]- Enthalpy of saturated vapour
H_1 = (H_liq_1*(1-x_1))+(x_1*H_vap_1);// [kJ/kg]
printf(" (a).Enthalpy of 1 kg of water in tank is %f kJ/kg\n",H_1);

//(b)
T_2 = 120.23;// [C] - temperature
V_2 = 0.6;// [m^(3)/kg] - specific volume

//From saturated steam tables at 120.23 C, as reported in the book
V_liq_2=0.001061;// [m^(3)/kg]
V_vap_2=0.8857;// [m^(3)/kg]
//since V_2 < Vv_2,dryness factor will be given by, V = ((1-x)*V_liq)+(x*V_vap)
x_2 = (V_2- V_liq_2)/(V_vap_2 - V_liq_2);

//From steam table,at 120.2 C,the vapour pressure of water is 0.2 MPa.So,enthalpy is given by
H_2 = (H_liq_1*(1-x_2))+(H_vap_1*x_2);//kJ/kg]
printf(" (b).Enthalpy of saturated steam is %f kJ/kg\n",H_2);

//(c)
P_3 = 2.5;//[MPa]
T_3 = 350;//[C]
//From steam tables at 2.5 MPa,T_sat = 223.99 C,as reported in the book
//since,T_3 > Tsat, steam is superheated
printf(" (c).As steam is superheated,from steam table,enthalpy (H) is 3126.3 kJ/kg\n");

//(d)
T_4 = 350;//[C]
V_4 = 0.13857;//[m^(3)/kg]
//From steam table,at 350 C, V_liq = 0.001740 m^(3)/kg and V_vap = 0.008813 m^(3)/kg.Since,V > V_vap,therefore it is superheated.
//From steam table at 350 C and 1.6 MPa, V = 0.17456 m^(3)/kg
//At 350 C and 2.0 MPa, V = 0.13857 m^(3)/kg. So,
printf(" (d).The enthalpy of superheated steam (H) is 3137.0 kJ/kg\n");

//(e)
P_4 = 2.0;//[MPa]
U_4 = 2900;// [kJ/kg] - internal energy
//From saturated table at 2.0 MPa, U_liq = 906.44kJ and U_vap = 2600.3 kJ/kg
//scince,U_4 > Uv, it is saturated.
//From superheated steam table at 2.0 MPa and 350 C, as reported in the book
U_1 = 2859.8;//[kJ/kg]
H_1 = 3137.0;//[kJ/kg]
//At 2.0 MPa and 400 C,
U_2 = 2945.2;//[kJ/kg]
H_2 = 3247.6;//[kJ/kg]
T = (((U_4 - U_1)/(U_2 - U_1))*(400 - 350)) + 350;//[C] - By interpolation
H = (((T - 350)/(400 - 350))*(H_2 - H_1)) + H_1;//[kJ/kg]
printf(" (e).The enthalpy value (of superheated steam) obtained after interpolation is %f kJ/kg\n",H);

//(f)
P_5 = 2.5;//[MPa]
T_5 = 100;//[C]
//At 100 C,P_sat=101350 N/m^(2). Since P_5 > P_sat,it is compressed liquid
P_sat = 0.101350;//[MPa]
H_liq = 419.04;//[kJ/kg] - At 100 C and 0.10135 MPa
V_liq = 0.001044;//[m^(3)/kg] - At 100 C and 0.10135 MPa
H_0 = H_liq + (V_liq*(P_5 - P_sat))*1000;//kJ/kg]
printf(" (f).The enthalpy of compressed liquid is %f kJ/kg\n",H_0);

