// Example 8.1
// Analysis of a Transformer Circuit
// Form figure 8.4(a)
N=3; // Ideal step-up transformer
V=complex(60,0);
omega=5000;// Radian frequency (rad/s)
Z_R=90; // Ohms
C=10*10^-6; // Farad
Z_C=1/(%i*omega*C);
// From frequency domain diagram 8.4(b)
V_1=V;
V_2=3*V;
I_R=(3*V_1)/Z_R; // Ohm's law for AC circuits
I_C=(V_1-V_2)/Z_C // Ohm's Law
I_2=I_C-I_R; // KCL
I=I_C-3*I_2;// KCL
Z=V/I;
P=0.5*real(Z)*abs(I)^2;
P_R=0.5*Z_R*abs(I_R)^2;
disp(P,"Average power supplied by the source(in Watts)=")
disp(P_R,"Average power dissipated by 90-Ohm resistor(in Watts)=")
disp("All the power from source is transferrd to the resistor")

