// scilab Code Exa 7.3 Calculation on a small compressor
pr=1.6; // Compressor pressure ratio
N1=54e3; // Speed in RPM
n_c=0.85; // efficiency
m_a=1.5778; //  in kg/s
cp_a=1.009; // Specific Heat of air at Constant Pressure in kJ/(kgK)
gamma=1.4;
// part (a) determining the power required to drive the compressor
T01=300;  // Entry Temperature in Kelvin
p01=1.008; //  Entry Pressure in bar
n=(gamma-1)/gamma;
T2s=T01*(pr^n);
delh_s=cp_a*(T2s-T01)/n_c;
P=m_a*delh_s;
disp("kW",P,"(a)Power required to drive the compressor is")

// part (b) determining the speed, mass flow rate, pressure ratio and power required of a geometrically similar compressor
// geometrically similar compressor of 3 times the size of small compressor is constructed 
N2=N1/3;
disp("rpm",N2,"(b)(i)speed of a geometrically similar compressor is")
m2=9*m_a;
disp("kg/s",m2,"(b)(ii)mass flow rate of a geometrically similar compressor is")
disp(pr,"(b)(iii)pressure ratio of a geometrically similar compressor is")
P2=9*P;
disp("kW",P2,"(b)(iv)Power required is")

