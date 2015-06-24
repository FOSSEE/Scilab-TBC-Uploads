// scilab Code Exa 18.37 Calculation for the specific speed

//part(1)specific speed of Axial flow gas turbine
P1=0.5e3; // Gas Turbine Power Output in kW
N1=60; // Speed in RPS
omega1=%pi*2*N1;
ro1=2;
delh_1=30; // change of enthalpy in kJ
NS_1=omega1*sqrt(P1*10e2/ro1)*((delh_1*1e3)^(-5/4));
disp(NS_1,"1.the specific speed of Axial flow gas turbine is")

//part(2)specific speed of IFR gas turbine
P2=0.75e3; // Gas Turbine Power Output in kW
N2=300; // Speed in RPS
omega2=%pi*2*N2;
ro2=1;
delh_2=250; // change of enthalpy in kJ
NS_2=omega2*sqrt(P2*10e2/ro2)*((delh_2*1e3)^(-5/4));
disp(NS_2,"2.the specific speed of IFR gas turbine is") 

// part(3)the specific speed of an axial compressor
N_c=120; // Speed in RPS
omega_c=%pi*2*N_c;
Q_c=25; // flow rate in m3/s
delh_3=40; // change of enthalpy in kJ
NS_c=omega_c*sqrt(Q_c)*((delh_3*1e3)^(-3/4));
disp(NS_c,"3.the specific speed of an axial compressor is")

// part(4)the specific speed of a centrifugal compressor
Q=5; // flow rate in m3/s
delh_4=35; // change of enthalpy in kJ
NS_4=omega_c*sqrt(Q)*((delh_4*1e3)^(-3/4));
disp(NS_4,"4.the specific speed of a centrifugal compressor is")

// part(5)the specific speed of an axial fan
N5=22; // Speed in RPS
omega_5=2*%pi*N5;
Q_5=3.5; // flow rate in m3/s
rho=1.25; // density in kg/m3
g=9.81; // gravitational acceleration in m/s2
H1=55/rho; // head in m
NS_5=omega_5*sqrt(Q_5)*((g*H1)^(-3/4));
disp(NS_5,"5.the dimensionless specific speed of an axial fan is")

// part(6)the specific speed of a Radial fan
N6=20; // Speed in RPS
omega_6=2*%pi*N6;
Q_6=1.4; // flow rate in m3/s

H2=52/rho; // head in m
NS_6=omega_6*sqrt(Q_6)*((g*H2)^(-3/4));
disp(NS_6,"6.the dimensionless specific speed of a Radial fan is")
