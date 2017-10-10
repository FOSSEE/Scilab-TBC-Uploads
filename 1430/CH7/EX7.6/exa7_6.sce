// Example 7.6
// Improving Power-Transfer Efficiency
// From figure 7.12
Z1= complex(4,15); // Impedance of Transmission line
Z2=complex(20,40); // Load Impedance
// Total series impedance without power-factor correction
Z_1= Z1+Z2;
V_rms_s=4800; // RMS value of Voltage source
I_rms= V_rms_s/(abs(Z_1));// RMS load current
V_rms= abs(Z2)*I_rms;// RMS load voltage
S=Z_1*I_rms^2; // Complex power supplied by the source
Eff_1=real(Z2)/(real(Z2)+real(Z1));
// Let us assume the susceptance of Capacitor be S=omega*C
S= poly(0,'S');
Y_eq= %i*S+1/Z2;
A=imag(Y_eq);
S=roots(A);
Y_eq=horner(Y_eq,S);
Z_eq=1/Y_eq;
// Impedance seen by source,
Z_2=Z_eq+Z_1;
I_rms1=V_rms_s/(abs(Z_2)); // New RMS Load Current
V_rms1=Z_2*I_rms; // New RMS Load Voltage
S=Z_2*I_rms^2; // New Complex power supplied by th source
Eff_2=real(Z_eq)/(real(Z1)+real(Z_eq));
disp(Eff_1,"Power Transfer Efficiency before pf correction=")
disp(Eff_2,"Power Transfer Efficiency after pf correction=")
