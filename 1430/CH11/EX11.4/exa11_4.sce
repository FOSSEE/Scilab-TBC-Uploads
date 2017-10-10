// Example 11.4
// Parallel Filter Network
// From figure 11.9 ,Let us assume values for R ,omega and C for illustration
R=50;
C=0.01*10^-6;
omega=50;
s=%s;
H_s= R/(R+1/(s*C)); // H(s)=I_C/I_in, can be found using current divider
H_omega=horner(H_s,%i*omega)
// Comparing this transfer function with first-order highpass filter we get
K=1;
omega_cutf=1/(R*C);
disp(K,"Gain=")
disp(omega_cutf,"Cutoff Frequency(rad/s)=")
