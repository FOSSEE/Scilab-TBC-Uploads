// Example 7.1
// AC Power Calculations
// From Example 6.8 we already found that,
Z=complex(4.8,6.4);
V_m=80;
V_c_m=40;
I_m=10*10^-3;
// The total average power supplied by the source is,
R_omega=4.8*10^3;
R1=40*10^3;
R2=5*10^3;
P=0.5*R_omega*I_m^2; // Average Power
// This power is actually dissipated by 40kohm and 5kohm resistor
P_R1= V_m^2/(2*R1);
P_R2=V_c_m^2/(2*R2);
disp(P,"Total Average Power Dissipation(in Watt)=")
disp(P_R1,"Power dissipated across 40kohm(in Watt)=")
disp(P_R2,"Power dissipated across 5kohm(in Watt)=")
if P==(P_R1+P_R2) then
disp("This shows average power dissipation in the due to all resistors")
end
