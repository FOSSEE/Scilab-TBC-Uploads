// Example 12.3: Efficiency
clc, clear
P_ac=2; // in watts
ICQ=150e-3; // in amperes
VCC=36; // in volts
P_dc=VCC*ICQ; // in watts
eta=P_ac*100/P_dc; // Efficiency in percentage
disp(eta,"Efficiency (%) =");