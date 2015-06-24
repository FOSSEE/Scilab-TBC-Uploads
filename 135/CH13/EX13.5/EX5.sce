// Example 13.5: Supply voltage, Peak current drawn from each supply, Total supply power, Power conversion efficiency, Maximum power that each transistor can dissipate safely
clc, clear
P_ac=20; // Average power delivered in watts
RL=8; // Load in ohms
Vm=sqrt(2*P_ac*RL); // Peak output voltage in volts
VCC=Vm+5; // Supply voltage in volts
Im=Vm/RL; // Peak current drawn from each supply in amperes
P_dc=2*Im*VCC/%pi; // Total supply power in watts
eta=P_ac*100/P_dc; // Power conversion efficiency in percentage
PD=2*VCC^2/(%pi^2*RL); // Maximum power dissipated in watts
PD_each=PD/2; // Maximum power dissipated by each transistor in watts
disp(VCC,"Supply voltage (V) =");
disp(Im,"Peak current drawn from each supply (A) =");
disp(P_dc,"Total supply power (W) =");
disp(eta,"Power conversion efficiency (%) =");
disp(PD_each,"Maximum power that each transistor can dissipate safely (W) =");