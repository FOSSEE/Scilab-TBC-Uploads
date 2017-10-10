// Example 7.4
// Power-Transfer Efficiency
// from figure 7.8
V_rms=300; // Volts
R_s=2;// Ohms
Z_R= 20;
Z_C= -%i*10;
Z_RC=(Z_C*Z_R)/(Z_C+Z_R);
// Total impedance seen by source
Z=R_s+Z_RC;
I_rms=V_rms/(abs(Z)); // RMS value of current
P=real(Z)*I_rms^2;// Real Power
Q= imag(Z)*I_rms^2; // Reactive Power
P_s= R_s*I_rms^2;
P_L=real(Z_RC)*I_rms^2;
// Power transfer efficiency
Eff=P_L/P;
disp(I_rms,"RMS valur of current(in Amps)=")
disp(P,"Real Power(in Watts)=")
disp(Q,"Reactive Power(in VAr)=")
