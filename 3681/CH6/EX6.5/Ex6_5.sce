// Calculating the power developed by the armature of motor
clc;
disp('Example 6.5, Page No. = 6.12')
// Given Data
P = 125;// Power rating (in W)
E = 230;// Voltage (in V)
rpm = 5000;
// Calculation of the power developed by the armature
Losses_total = P;// Total losses (in W)
Losses_constant = P/3;// Constant losses (in W).  Since the sum of iron, friction and windage losses is approximately 1/3 of total losses
Pa = Losses_total+Losses_constant;// Power developed by the armature (in W)
disp(Pa,'Power developed by the armature (W)=');
//in book answer is 167 (W).  The answers vary due to round off error
