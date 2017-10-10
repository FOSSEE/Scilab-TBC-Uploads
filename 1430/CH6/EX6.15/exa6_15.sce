// Example 6.15
// Series Resonance Design
// From the given Design specification
V_m=100;
omega_0=5000;
Q_ser=10;
L=0.4; // Henry
V_C_m=Q_ser*V_m;
C=1/(omega_0^2*L)// From the condition of series resonance
R=(omega_0*L)/Q_ser;
// When we build the circuit with this specifications we find that that Q_ser=8
// So there must have some significant winding resistance R_w
R_w=250-200;
// So we need to replace 200-Ohm resistor with 150-Ohm so as to get 1kV sinusoid
disp(R_w,"Winding Resistance(Ohms)=")
