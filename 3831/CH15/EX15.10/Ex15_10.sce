// Example 15_10
clc;funcprot(0);
// Given data
T=25.0;// °C
p=0.100;// MPa

// Calculation
// (a)
h_f_C8H18=-249.952;// MJ/kgmole
h_fuel=h_f_C8H18;// MJ/kgmole
h_f_CO2=-393.522;// MJ/kgmole
h_f_H2O_g=-241.827;// MJ/kgmole
h_f_N_2=0;// MJ/kgmole
h_fi=(8*h_f_CO2)+(9*h_f_H2O_g)+(47*h_f_N_2);// MJ/kgmole of C8H18
c_p_CO2=0.05818;// MJ/kgmole.K
c_p_H2O=0.04250;// MJ/kgmole.K
c_p_N2=0.03118;// MJ/kgmole.K
c_pi_avg=(8*c_p_CO2)+(9*c_p_H2O)+(47*c_p_N2);// MJ/kgmole of C8H18.K
T_Aos=((h_f_C8H18-(h_fi))/c_pi_avg)*1.8;// °F
printf("\n(a)The open system (constant pressure) adiabatic flame temperature burning with 100.percent theoretical air,T_A|open system=%4.0f°F",T_Aos);
// (b)
c_p_O2=0.03299;// MJ/(kgmole).K
c_pi_avg=(8*c_p_CO2)+(9*c_p_H2O)+(12.5*c_p_O2)+(94*c_p_N2);// MJ/kgmole of C8H18.K
T_Aos=(((h_f_C8H18-(h_fi))/c_pi_avg)+T)*1.8;// °F
printf("\n(b)The open system (constant pressure) adiabatic flame temperature burning with 200.percent theoretical air,T_A|open system=%4.0f°F",T_Aos)
// (c)
R=0.0083143;// // MJ/kgmole.K
N=h_fuel-h_fi-((R*(T+273.15))*[1+(12.4*4.76)-(8+9+47)]);// The numerator in  MJ/kgmole of C8H18.K
c_v_CO2=0.04987;// MJ/kgmole.K
c_v_H2O=0.03419;// MJ/kgmole.K
c_v_N2=0.02287;// MJ/kgmole.K
c_vi_avg=(8*c_v_CO2)+(9*c_v_H2O)+(47*c_v_N2);// MJ/kgmole.K
T_Acs=T+(N/c_vi_avg);// The denominator in  MJ/kgmole of C8H18.K
T_Acs=(T_Acs*1.8)+32;// °F
printf("\n(c)The closed system (constant volume) adiabatic flame temperature burning with 100.percent theoretical air,T_A|closed system=%4.0f°F",T_Acs);
