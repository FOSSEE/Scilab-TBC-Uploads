//Example 10.9
// Calculations with s-plane Vectors
s=%s;
num=-6*s; // Numerator of transfer
den=s^2+12*s+45; // Denominator
X=complex(10,0); // Input signal phasor
s_0=complex(-4,3)// complex frequency
H_s=(num)/(den)// Transfer-function of the network
H_s_0=horner(H_s,s_0);
Y=H_s_0*X; // forced response phasor
disp(Y,"Forced response phasor")
