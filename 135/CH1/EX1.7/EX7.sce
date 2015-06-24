// Example 1.7: Potential barrier
clc, clear
rho_p=0.05; // Resistivity of p side of step-graded junction in ohm metres
rho_n=0.025; // Resistivity of n side of step-graded junction in ohm metres
mu_p=475e-4; // Mobility of holes in metres square per volt second
mu_n=1500e-4; // Mobility of holes in metres square per volt second
ni=1.45e16; // Intrinsic carrier concentration in atoms per metres cube
q=1.6e-19; // Charge on an electron in coulombs
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
NA=1/(q*mu_p*rho_p); // Acceptor concentration in atoms per metres cube
ND=1/(q*mu_n*rho_n); // Donor concentration in atoms per metres cube
Vo=VT*log(NA*ND/ni^2); // Contact difference of potential in volts
Vo=Vo*1e3; // Contact difference of potential in milivolts
disp(Vo,"Contact difference of potential (mV) = ");