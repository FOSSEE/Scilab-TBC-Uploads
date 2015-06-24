clc;
m_C2H6O=46;
m_O2=3*32;
O2_req=m_O2/m_C2H6O;
s_AF=O2_req/0.233;
disp(s_AF,"stoichiometric A/F ratio is:")

//part II
disp("")
AF=s_AF/0.9;
disp(AF,"actual A/F ratio is:")
mC=2;
mH=3;
mO=0.333;
mN=12.540;
Tas=mC+mO+mH+mN;
disp(mN/Tas*100,mO/Tas*100,mH/Tas*100,mC/Tas*100,"wet analysis of CO2,H2O,O2,N2");

Tad=mC+mO+mN;
disp(mN/Tas*100,mO/Tas*100,mC/Tas*100,"dry analysis of CO2,O2,N2");

//part III
disp("")
a_AF=s_AF/1.2;
disp(a_AF,"actual A/F ratio is:")

mCO2=1;
mCO=1;
mH2=3;
mN2=9.405;
taw=mCO2+mCO+mH2+mN2;

disp(mN2/taw*100,mH2/taw*100,mCO/taw*100,mCO2/taw*100,"wet analysis of CO2,H2O,O2,N2");

tad=mCO2+mCO+mN2;
disp(mN2/tad*100,mCO/tad*100,mCO2/tad*100,"dry analysis of CO2,H2O,O2,N2");
