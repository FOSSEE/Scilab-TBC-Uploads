// Example 10_15
clc;funcprot(0);
// Given data
m_air=0.800;// kg/s
T_air_in=20.0;// °C
T_0=20.0;// °C
p_ein=1.10;// atm
p_eout=1.0;// atm
p_ain=1.50;// atm
p_aout=1.40;// atm
p_0=1.00;// atm
T_ein=500;// °C
T_eout=400;// °C
c_p_exh=0.990;// kJ/(kg.K)
c_p_air=1.004;// kJ/(kg.K)
m_exh=m_air;// kg/s
m_cold=m_air;// kg/s
R_exh=0.272;// kJ/(kg.K)
R_air=0.286;// kJ/(kg.K)

// Calculation
// (a)
c_p_cold=c_p_air;// kJ/(kg.K)
T_air_out=T_air_in+(((m_exh*c_p_exh)/(m_cold*c_p_cold))*(T_ein-T_eout));// °C
// (b)
a_f_inexh=(c_p_exh*(T_ein-T_0))-((T_0+273.15)*[(c_p_exh*log((T_ein+273.15)/(T_0+273.15)))-(R_exh*log(p_ein/p_0))])+0+0;// kJ/kg
a_f_outexh=(c_p_exh*(T_eout-T_0))-((T_0+273.15)*[(c_p_exh*log((T_eout+273.15)/(T_0+273.15)))-(R_exh*log(p_eout/p_0))])+0+0;// kJ/kg
a_f_inair=(c_p_air*(T_air_in-T_0))-((T_0+273.15)*[(c_p_air*log((T_air_in+273.15)/(T_0+273.15)))-(R_air*log(p_ain/p_0))])+0+0;// kJ/kg
a_f_outair=(c_p_air*(T_air_out-T_0))-((T_0+273.15)*[(c_p_air*log((T_air_out+273.15)/(T_0+273.15)))-(R_air*log(p_aout/p_0))])+0+0;// kJ/kg
E_nmHX=((m_air*(a_f_outair-a_f_inair))/(m_exh*(a_f_inexh-a_f_outexh)))*100;// The second law availability efficiency in %
printf("\n(a)The exit temperature of the inlet air,(T_out)_air=%3.0f°C \n(b)The second law availability efficiency of the preheater,E_nonmixingHX=%2.1f percentage",T_air_out,E_nmHX);
