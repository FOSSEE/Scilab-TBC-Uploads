clc
h1=35.4; //kJ/kg
h2=45.2; //kJ/kg
v_s1=0.8267; //m^3/kg
m_a=241.9;

disp("(i) R.H. of heated air =")
RH=41; // From chart
disp(RH)
disp("%")

disp("(ii) WBT of heated air =")
WBT=16.1; //0C
disp(WBT)
disp("ºC")

disp("(iii) Heat added to air per minute =")
Q=m_a*(h2-h1);
disp(Q)
disp("kJ")