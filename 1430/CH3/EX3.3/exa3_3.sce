// Example 3.3
// Calculating Power Transfer and Efficiency
v_s=120; // Open Circuit Voltage
R_s=0.2+4.8;// Source resistance
R_L=5; // From Maximum Power transfer theorem
P_max=(120)^2/(4*5); // Maximum Power Transfered
P_hp=P_max/746;// Maximum Power in Horsepower
i=120/(5+4.8+0.2);// Current in circuit
P_s=(i)^2*5;// Power dissipated in Source
Eff=P_max/(P_max+P_s); // Power Transfer Efficiency
disp(P_max,"Maximum Power Transfered(in Watt)=")
disp(P_hp,"Maximum Power Transfered(in Horsepower)=")
disp(Eff,"Power Transfer Efficiency =")
