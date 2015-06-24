clc
p=1*10^5; //Pa
T=293; //K
n_CO2=1; //moles of CO2
n=4; //moles of air
M_CO2=44;
M_N2=28;
M_O2=32;

//Let A be the volumeetric analysis
A_O2=0.21;
A_N2=0.79;

n_O2=A_O2*n;
n_N2=A_N2*n;

disp("(i) The masses of CO2, O2 and N2, and the total mass")

m_CO2=n_CO2*M_CO2;
disp("Mass of CO2=")
disp(m_CO2)
disp("kg")

m_O2=n_O2*M_O2;
disp("Mass of O2=")
disp(m_O2)
disp("kg")

m_N2=n_N2*M_N2;
disp("Mass of N2=")
disp(m_N2)
disp("kg")

m=m_CO2 + m_O2 + m_N2;
disp("Total mass =")
disp(m)
disp("kg")


disp("(ii) The percentage carbon content by mass")
//Since the molecular weight of carbon is 12, therefore, there are 12 kg of carbon present for every mole of CO2
m_C=12; //kg

%C=m_C/m*100;
disp("Percentage carbon in mixture")
disp(%C)
disp("%")


disp("(iii) The apparent molecular weight and the gas constant for the mixture")
n=n_CO2 + n_O2 + n_N2;
M=n_CO2/n*M_CO2 + n_O2/n*M_O2 + n_N2/n*M_N2;
disp("Apparent Molecular weight")
disp(M)

R0=8.314;
R=R0/M;
disp("Gas constant for the mixture=")
disp(R)
disp("kJ/kg K")


disp("(iv) The specific volume of the mixture")
v=R*10^3*T/p;
disp("specific volume=")
disp(v)
disp("m^3/kg")
