// Example 7_7
clc;funcprot(0);
// Given data
P_1=1*10^6;// Pa
T_1=300+273;// K
P_2=0.1*10^6;// Pa
P_3=0.01*10^6;// Pa
T_0=25+273;// K
rho=1000;// kg/m^3

// Calculation
// From steam tables
h_1=3051.2;// kJ/kg
s_1=7.1237;// kJ/kg.K
s_2=s_1;// kJ/kg.K
// At P=0.1 MPa,
x_2=0.96;// The quality of steam at state 2
h_2=2587.3;// kJ/kg
s_3=s_2;// kJ/kg.K
// At P=0.01 MPa,
x_3=0.86;// The quality of steam at state 3
h_3=2256.9;// kJ/kg
// The dead state for water is liquid at 25°C and 100 kPa
h_f=104.9;// kJ/kg
h_0=h_f;// kJ/kg
s_f=0.3672;// kJ/kg.K
s_0=s_f;// kJ/kg.K
m_1=1;// kg
m_2=0.10;// kg
m_3=m_1-(10/100);// kg
m_4=0.10;// kg
s_4=0.6491;// kJ/kg
h_4=191.8;// kJ/kg
h_6=192.8;// kJ/kg
X_2=m_2*[h_2-h_0-(T_0*(s_2-s_0))];// The availability at state 2 in kJ
W_turb=(m_1*(h_1-h_2))+(m_3*(h_2-h_3));// kJ
X_4=m_4*[h_4-h_0-(T_0*(s_4-s_0))];// The availability at state 4 in kJ
W_pump=m_1*((P_1/10^3)-(P_2/10^3))/rho;// kJ
Q_boil=m_1*(h_1-h_6);// kJ
e_II=(X_2+W_turb)/(X_4+W_pump+([1-(T_0/T_1)]*Q_boil));// The second law effectiveness 
printf("\nThe second law effectiveness,e_II=%0.2f",e_II);
