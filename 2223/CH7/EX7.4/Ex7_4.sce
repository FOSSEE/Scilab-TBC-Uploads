// scilab Code Exa 7.4 Calculation on a single stage gas turbine

gamma_g=1.33;
gamma=1.4
R_g=284.1;
R=287;
P=1e3; // Power Output in kW
N1=3e3; // Speed in RPM
n_t=0.87; // efficiency
cp_g=1.145; // Specific Heat of gas at Constant Pressure in kJ/(kgK)
cp_a=1.0045; // Specific Heat of air at Constant Pressure in kJ/(kgK)

// part (a)mass flow rate of the gas through the turbine
T01=1000;  // Entry Temperature in Kelvin
p01=2.5; //  Entry Pressure in bar
T01a=500;  // Entry Temperature of air in Kelvin
p01a=2; //  Entry Pressure of air in bar
p02=1; //  Exit Pressure in bar
pr0=p01/p02;
T02=T01*(pr0^(-((gamma_g-1)/gamma_g)));
delh_s1=cp_g*(T01-T02)*n_t;
m_g=P/delh_s1;
disp("kg/s",m_g,"(a)mass flow rate of the gas through the turbine is")

// part (b)speed, mass flow rate, pressure ratio and power required 
N2=sqrt(1/2)*5*N1;
disp("rpm",N2,"(b)(i)speed of a geometrically similar compressor is")
a=0.2; // a=D2/D1;
m2=(a^2)*sqrt(R_g/R)*sqrt(T01/T01a)*(p01a/p01)*m_g;
disp("kg/s",m2,"(b)(ii)mass flow rate of a geometrically similar turbine is")
delh_s2=0.5*delh_s1;
P2=m2*delh_s2;
disp("kW",P2,"(b)(iii)Power developed is")
pr=(1-(delh_s2/(cp_a*T01a*n_t)))^(-1/((gamma-1)/gamma));
disp(pr,"(b)(iv)pressure ratio of a geometrically similar turbine is")
