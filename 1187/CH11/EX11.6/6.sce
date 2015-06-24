clc

p0=510; // kPa
pA=500; // kPa
pB=280; // kPa
d=0.02; // m
l_max=12; // m

disp("(a) the value of the friction factor for the pipe")

// At A, pA/p0 = 500/510 = 0.980. From the Isentropic Flow Tables (Appendix 3), M_A = 0.17.
// From the Fanno Flow Tables (Appendix 3)for M_A = 0.17 and γ = 1.4, pc/pA = 0.1556 and (fl_maxP/A)_A = 21.37

pC=pA*0.1556;

// From the Fanno Tables at pc/pB = 0.278,M_B = 0.302 and (fl_maxP/A)B = 5.21.
// For a circular pipe P/A=4/d
M_B=0.302;
f=(21.37-5.21)/l_max/4*d;

disp("friction factor =")
disp(f)

disp("(b) the overall length of the pipe, L, if the flow exhausts to atmosphere")

p=100; // kPa

// At exit, pc/p = 77.8/100 = 0.778. From the Fanno Tables, (fl_maxP/A) = 0.07
L=l_max*(21.37-0.07)/(21.37-5.21);

disp("Overall Length =")
disp(L)
disp("m")

disp("(c) the mass flow rate if the reservoir temperature is 294 K.")
T0=294; // K
R=287; // J/kg.K
y=1.4;
M=0.302;

m=%pi/4*d^2*pB*10^3*M_B*(y*(1+(y-1)*M^2/2)/R/T0)^(1/2);
disp("mass flow rate =")
disp(m)
disp("kg/s")
