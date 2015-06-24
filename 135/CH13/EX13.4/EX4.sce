// Example 13.4: Maximum input power, Maximum ac output power, Maximum conversion efficiency, Maximum power dissipated by each transistor
clc, clear
VCC=15; // in volts
RL=8; // in ohms
P_dc=2*VCC^2/(%pi*RL); // Maximum input power in watts
P_ac=VCC^2/(2*RL); // Maximum ac output power in watts
eta=P_ac*100/P_dc; // Maximum efficiency in percentage
PD=2*VCC^2/(%pi^2*RL); // Maximum power dissipated in watts
PD_each=PD/2; // Maximum power dissipated by each transistor in watts
disp(P_dc,"Maximum input power (W) =");
disp(P_ac,"Maximum ac output power (W) =");
disp(eta,"Maximum conversion efficiency (%) =");
disp(PD_each,"Maximum power dissipated by each transistor (W) =");