// Example 6.7 : Application of miller's theorem

// 6.7a
// By miller's theorem
Z=1000*10^3; // (ohm)
K=-100; // (V/V)
R_sig=10*10^3; // (ohm)
Z_1=Z/(1-K);
disp(Z_1,"Z_1 (ohm)")
Z_2=Z/(1-(1/K));
disp(Z_2,"Z_2 (ohm)")
VobyVsig=-100*Z_1/(Z_1+R_sig); // VobyVsig=(V_o/V_sig)
disp(VobyVsig,"(V_o/V_sig) (V/V)")

//6.7b
// Applying miller's theorem
f_3dB=1/(2*%pi*1.01*10^-6);
disp(f_3dB,"f_3dB (Hz)")