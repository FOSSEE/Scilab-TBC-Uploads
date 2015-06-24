// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 15")
p_vaccum=71.5;//recorded condenser vaccum in cm of mercury
p_barometer=76.8;//barometer reading in cm of mercury
T_cond=35;//temperature of condensation in degree celcius
T_hotwell=27.6;//temperature of hot well in degree celcius
m_cond=1930;//mass of condensate per hour
m_w=62000;//mass of cooling water per hour
Ti=8.51;//initial temperature in degree celcius
To=26.24;//outlet temperature in degree celcius
disp("from dalton law of partial pressure the total pressure inside condenser will be sum of partial pressures of vapour and liquid inside.")
disp("condenser pressure(p_condenser)=(p_barometer-p_vaccum)*101.325/73.55 in Kpa")
p_condenser=(p_barometer-p_vaccum)*101.325/73.55
disp("partial pressure of steam corresponding to35 degree celcius from steam table;")
disp("p_steam=5.628 Kpa")
p_steam=5.628;//partial pressure of steam
disp("enthalpy corresponding to 35 degree celcius from steam table,")
disp("hf=146.68 KJ/kg,hfg=2418.6 KJ/kg")
hf=146.68;
hfg=2418.6;
disp("let quality of steam entering be x")
disp("from energy balance;")
disp("mw*(To-Ti)*4.18=m_cond*(hf+x*hfg-4.18*T_hotwell)")
disp("so dryness fraction of steam entering(x)is given as")
disp("x=(((m_w*(To-Ti)*4.18)/m_cond)-hf+4.18*T_hotwell)/hfg")
x=(((m_w*(To-Ti)*4.18)/m_cond)-hf+4.18*T_hotwell)/hfg
