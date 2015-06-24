clear ;
clc;
// Example 6.9
printf('Example 6.9\n\n');
printf('Page No. 157\n\n');

// given
P = 10;// Boiler pressure in bar
Ts = 180;// Steam temperature in degree celcius
Tf = 80;// Feed water temperature in degree celcius
X = 0.95;// Steam dryness fraction
m_s = 4100;// steam rate in kg/h
m_f = 238;// Gas rate in kg/h
G_CV = 53.5*10^6;// In J/kg
N_CV = 48*10^6;//in J/kg

//from steam table,AT 10 bar and at temperature T = Ts
h2 = (763+(X*2013))*10^3;//Specific enthalpy of steam in J/kg
//At temperature T = Tf
h1 = 335*10^3;//Specific enthalpy of feed steam in J/kg

E_G = ((m_s*(h2-h1)*100)/(m_f*G_CV));//
printf('The gross efficiency  percentage is %.0f \n',E_G)


E_N = ((m_s*(h2-h1)*100)/(m_f*N_CV));//
printf('The net efficiency  percentage is %.0f',E_N)



