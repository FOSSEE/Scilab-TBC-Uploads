clear ;
clc;
// Example 6.10
printf('Example 6.10\n\n');
printf('Page No. 158\n\n');

// given
//for Boiler-1
P_1 = 15;// Boiler pressure in bar
Ts_1 = 300;// Steam temperature in degree celcius
Tf_1 = 80;// Feed water temperature in degree celcius
X_1 = 0;// Steam dryness fraction
m_s1 = 9000;// steam rate in kg/h
m_f1 = 700;// Gas rate in kg/h
G_CV1 = 43.0*10^6;// In J/kg
//from steam table,at P = 15 bar and at given temperatures
h2_1 = 3039*10^3;//Specific enthalpy of steam in J/kg
h1_1 = 335*10^3;//Specific enthalpy of feed steam in J/kg

E_G1 = ((m_s1*(h2_1-h1_1)*100)/(m_f1*G_CV1));//
printf('The gross efficiency  percentage is %.0f \n',E_G1)
Ee_1 = ((m_s1/m_f1)*(h2_1-h1_1))/(2257*10^3);
printf('the  equivalent evaporation for boiler-1 is %3.1f kg \n\n',Ee_1)

//for Boiler-2
P_2 = 10;// Boiler pressure in bar
Ts_2 = 180;// Steam temperature in degree celcius
Tf_2 = 60;// Feed water temperature in degree celcius
X_2 = 0.96;// Steam dryness fraction
m_s2 = 7000;// steam rate in kg/h
m_f2 = 510;// Gas rate in kg/h
G_CV2 = 43.0*10^6;// In J/kg
//from steam table,AT 10 bar and at temperature T = Ts_2
h2 = (763+(X_2*2013))*10^3;//Specific enthalpy of steam in J/kg
//At temperature T = Tf_2
h1 = 251*10^3;//Specific enthalpy of feed steam in J/kg

E_G2 = ((m_s2*(h2-h1)*100)/(m_f2*G_CV2));//
printf('The gross efficiency  percentage is %.0f\n',E_G2)
Ee_2 = ((m_s2/m_f2)*(h2-h1))/(2257*10^3);
printf('the  equivalent evaporation for boiler-2 is %3.1f kg',Ee_2)





