// Example 11.5: Output signal voltage, Output noise voltage, Improvement in S/N ratio
clc, clear
A1=1;
Vs=1; // in volts
Vn=1; // in volts
A2=100;
bta=1;
Vos=Vs*A1*A2/(1+bta*A1*A2); // Output signal voltage in volts
Von=Vn*A1/(1+bta*A1*A2); // Output noise voltage in volts
SNRi=20*log10(Vs/Vn); // Input S/N ratio in dB
SNRo=20*log10(Vos/Von); // Output S/N ratio in dB
SNR=SNRo-SNRi; // Improvement in S/N raio in dB
disp(Vos,"Output signal voltage (V) =");
disp(Von,"Output noise voltage (V) =");
disp(SNR,"Improvement in S/N ratio (dB) =");