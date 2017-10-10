// Example 7.3
// Power Transfer from an Oscillator
V_rms=1.2;
Z_s=complex(6,8)*10^3;
Z=conj(Z_s); // Matched Load Impedance
P_max=V_rms^2/(4*real(Z));// Maximum availble power
// If load has a fixed ratio X/R= -7/24 then,
c=poly(0,'c');
Z_1= complex(24,-7)*c;// New value of 
// Since |Z_1|=|Z_s|
q=abs(Z_1)-abs(Z_s);
c=roots(q);
Z_1=horner(Z_1,c);
// Resulting Load Power
P= real(Z_1)*V_rms^2/(abs(Z_s+Z_1))^2;
Eff= real(Z_1)/(real(Z_s)+real(Z_1))
disp(P,"Resulting Load Power(in Watt)=")
disp(Eff,"Transfer Efficiency=")
