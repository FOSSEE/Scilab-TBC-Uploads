// Example 7.9
// Power-Factor Correction with Parallel Loads
V_l=780; // Generator Line voltage
f=60; // Cyclic frequency (Hz)
Z1_del= complex(30,60); // Load 1; balanced delta impedance
Z2_wye=complex(30,0);// Load 2; balanced wye with impedance
// Equivalent wye impedance of the delta load is ,
Z1_wye=Z1_del/3;
// Potential at equivalent neutral N1 of the delta load equals the potential at 
// N2 in the wye load
// Hence from figure 7.24(b)
Z_wye=(Z1_wye*Z2_wye)/(Z1_wye+Z2_wye);// Equivalent wye impedance per phase
V_phi= V_l/sqrt(3); // Phase voltage from line voltage
I_rms=V_phi/abs(Z_wye); // RMS current for one phase of the combined load
P_phi=real(Z_wye)*I_rms^2; // Real power
Q_phi=imag(Z_wye)*I_rms^2; // Reactive power
// For balanced condition ,the three capacitor must be equal and arranged in a 
// delta or wye configuration
C_del=Q_phi/(2*%pi*f*V_l^2); // For delta configuration
C_wye= 3*C_del; // For wye configuration
Q_C=-Q_phi; // Condition for connecting capacitor
// Total Average power supplied by the generator
P=3*P_phi;
I_l=P/(sqrt(3)*V_l);// RMS line current
disp(C_del,"Capacitance for power factor correction in delta configuration(in farad)=")
disp(C_wye,"Capacitance for power factor correction in wye configuration(in farad)=")
disp(P,"Total average power supplied by the generator(in Watt)=")
disp(I_l,"RMS line current(in Amps)=")
// NOTE- Computed Values for C_del and C_wye in Textbook is wrong.
