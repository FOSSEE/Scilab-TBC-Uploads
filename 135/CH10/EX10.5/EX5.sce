// Example 10.5: Cπ
clc, clear
IC=1e-3; // in amperes
b_o=120;
b_jw=10;
f=25e6; // in hertz
C_mu=1e-12; // in farads
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
wb=sqrt((2*%pi*f)^2*b_jw^2/(b_o^2-b_jw^2)); // in rad/sec
wT=wb*b_o; // in hertz
gm=IC/VT; // in mho
C_pi=gm/wT-C_mu; // in farads
C_pi=C_pi*1e12; // in pico-farads
disp(C_pi,"Cπ (pF) =");