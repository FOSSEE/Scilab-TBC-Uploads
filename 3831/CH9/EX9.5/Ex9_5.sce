// Example 9_5
clc;funcprot(0);
// Given data
m_a=0.200;// kg/s
T_ain=90.0;// °C
T_aout=75.0;// °C
T_win=20.0;// °C
T_wout=40.0;// °C
U=140;// W/(m^2.K)
c_pa=1.004;// The specific heat of air in kJ/kg.K
c_pw=4.186;// The specific heat of water in kJ/kg.K

// Calculation
// (a) Parallel flow
delT_LMTDa=((T_aout-T_wout)-(T_ain-T_win))/(log((T_aout-T_wout)/(T_ain-T_win)));// K
//(b) Counter flow
delT_LMTDb=((T_aout-T_win)-(T_ain-T_wout))/(log((T_aout-T_win)/(T_ain-T_wout)));// K
Q=abs(m_a*c_pa*10^3*(T_aout-T_ain));// J/s
A_pf=Q/(U*delT_LMTDa);// m^2
A_cf=Q/(U*delT_LMTDb);// m^2
m_w=m_a*(c_pa/c_pw)*((T_ain-T_aout)/(T_wout-T_win));// kg/s
S_p=(m_a*c_pa*10^3*log((T_aout+273.15)/(T_ain+273.15)))+(m_w*c_pw*10^3*log((T_wout+273.15)/(T_win+273.15)));// W/K
printf("\nThe corresponding heat exchanger area for parallel flow,A_parallel flow=%0.3f m^2 \nThe corresponding heat exchanger area for counter flow,A_counter flow=%0.3f m^2 \nThe entropy production rate,S_p=%1.2f W/K",A_pf,A_cf,S_p);
