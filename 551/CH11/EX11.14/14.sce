clc
// C2H2+2.5O2+2.5*(79/21)N2 --> 2CO2+H2O+2.5*(79/21)N2

//26 kg C2H2 + 160 kg O2 + 526.6 kg N2 → 88 kg CO2 + 18 kg H2O + 526.6 kg N2 + 80 kg O2

//1 kg C2H2 + 6.15 kg O2 + 20.25 kg N2 → 3.38 kg CO2 + 0.69 kg H2O + 20.25 kg N2 + 3.07 kg O2

m_CO2=3.38; //kg
m_H2O=0.69; //kg
m_O2=3.07; //kg
m_N2=20.25; //kg
m_total=m_CO2+m_H2O+m_O2+m_N2;

CO2=m_CO2/m_total*100;
H2O=m_H2O/m_total*100;
O2=m_O2/m_total*100;
N2=m_N2/m_total*100;

disp("Hence the gravimetric analysis of the complete combustion is :")
disp("CO2=")
disp(CO2)
disp("%")

disp("H2O=")
disp(H2O)
disp("%")

disp("O2=")
disp(O2)
disp("%")

disp("N2=")
disp(N2)
disp("%")