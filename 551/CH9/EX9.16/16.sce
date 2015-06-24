clc
V=0.6; //m^3
p1=12*10^5; //Pa
p2=18*10^5; //Pa
T=298; //K
R0=8.314;
x_O2=0.23;
x_N2=0.77;

n=p1*V/R0/10^3/T;

//Considering 100 kg of air
m_O2=23; //kg
m_N2=77; //kg
M_O2=32;
M_N2=28;
m=100; //kg

R=(m_O2/M_O2 + m_N2/M_N2)*R0/m; //for air
M=R0/R; //for air

m=p1*V/R/T/10^3;

m_O2=x_O2*m;
disp("Mass of O2=")
disp(m_O2)
disp("kg")

m_N2=x_N2*m;
disp("Mass of N2=")
disp(m_N2)
disp("kg")


//After adding CO2 in the vessel
p2=18*10^5; //Pa;

// p_CO2+p_N2+p_O2=18*10^5
// p_N2 + p_O2=12*10^5

p_CO2=6*10^5; //Pa
M_CO2=44;
R_CO2=R0/M_CO2;

m_CO2=p_CO2*V/(R_CO2*10^3*T);
disp("Mass of CO2 = ")
disp(m_CO2)
disp("kg")
