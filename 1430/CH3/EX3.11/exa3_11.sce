// Example 3.11
// Estimating Voltage Measurement Error
V_u_min=7.40-0.03*10; // Minimum value of measured voltage
V_u_max=7.40+0.03*10;// Maximum value of measured voltage
R_vm=20000*10; // Total input resistance of voltmeter
// thevenin equivalent resistance R= (R_x*5000)/(R_x+5000)<=5000
R=5000; // Maximum value of thevenin resistance
// Upper bound on the actual voltage is
V_act_u=(1+R/R_vm)*7.70; 
// Lower bound on the actual voltage corresponds to R/R_vm=0
V_act_l=(1+0)*7.10;
disp(V_act_u,"Upper bound on the actual Voltage reading(in Volts)=")
disp(V_act_l,"Lower bound on the actual voltage readind(in Volts)=")
