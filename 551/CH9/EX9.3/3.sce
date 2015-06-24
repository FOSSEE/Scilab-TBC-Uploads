clc
p=1; //bar

//For oxygen
m_O2=0.2314;
M_O2=32;
n_O2=m_O2/M_O2;

//For Nitrogen
m_N2=0.7553;
M_N2=28;
n_N2=m_N2/M_N2;

//For Argon
m_Ar=0.0128;
M_Ar=40;
n_Ar=m_Ar/M_Ar;

//For CO2
m_CO2=0.0005;
M_CO2=44;
n_CO2=m_CO2/M_CO2;


n=n_O2 + n_N2 + n_Ar + n_CO2;

//Let Vi/V be A

A_O2=n_O2/n * 100;
disp("Vi/V of O2=")
disp(A_O2)
disp("%")

A_N2=n_N2/n * 100;
disp("Vi/V of N2=")
disp(A_N2)
disp("%")

A_Ar=n_Ar/n *100;
disp("Vi/V of Ar")
disp(A_Ar)
disp("%")

A_CO2=n_CO2/n * 100;
disp("Vi/V of CO2=")
disp(A_CO2)
disp("%")


P_O2=n_O2/n*p;
disp("Partial pressure of O2=")
disp(P_O2)
disp("bar")

P_N2=n_N2/n*p;
disp("Partial pressure of N2=")
disp(P_N2)
disp("bar")

P_Ar=n_Ar/n*p;
disp("Partial pressure of Ar=")
disp(P_Ar)
disp("bar")

P_CO2=n_CO2/n*p;
disp("Partial pressure of CO2=")
disp(P_CO2)
disp("bar")

