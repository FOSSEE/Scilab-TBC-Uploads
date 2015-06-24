// Example 10.17: (b) a1, a2
clc, clear
RS=0.3e3; // in ohms
r_pi=2e3; // in ohms
RC=0.6; // in ohms
gm=0.1e-3; // in mho
C_pi=19.5e-12; // in farads
C_mu=0.5e-12; // in farads
R_pi=RS*r_pi/(RS+r_pi); // in ohms
a1=C_pi*R_pi+C_mu*(R_pi+RC+gm*R_pi*RC); // in seconds
a1=a1*1e9; // in nano-seconds
a2=C_pi*R_pi*C_mu*RC; // in seconds square
disp(a1,"a1 (ns) =");
disp(a2,"a2 (sec square) =");