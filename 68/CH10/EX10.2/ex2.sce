// Example 10.2 : W/L ratios for the logic circuit
//For basic inverter
n=1.5;
p=5;
L=0.25*10^-6; // (m)
WbyL=2*n; // W/L for Q_NB , Q_NC , Q_ND
disp(WbyL,"W/L ratio for Q_NB")
disp(WbyL,"W/L ratio for Q_NC")
disp(WbyL,"W/L ratio for Q_ND")
WbyL=n; // W/L ratio for Q_NA
disp(WbyL,"W/L ratio for Q_NA")
WbyL=3*p; // W/L for Q_PA, Q_PC , Q_PD
disp(WbyL,"W/L ratio for Q_PA") 
disp(WbyL,"W/L ratio for Q_PC")
disp(WbyL,"W/L ratio for Q_PD")