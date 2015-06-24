//ex13.2
R1=100*10^3;
R2=R1;
V_out_max=5;
V_UTP=R2*V_out_max/(R1+R2);
V_LTP=-V_out_max*R2/(R1+R2);
disp(V_UTP,'upper trigger point in volts')
disp(V_LTP,'lower trigger point in volts')