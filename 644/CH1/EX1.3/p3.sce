// Example1.3. A coil consists of 2000 turns of copper wire having a cross sectional area  of 0.8 mm^2. The mean length per turn is 80 cm and resistivity of copper is 0.02 micro-ohm- metre. Find the resistance of the coil and power absorbed by the coil when connected across 110 V d.c. supply.
//1 millimetre = 10^-3 metre
// 1 micro-ohm = 10^-6 ohms
N = 2000; // number of turns
A = 0.8*10^-6;// crossectional area (m^2)
l = 80*10^-2;// mean length(m)
p = 0.02*10^-6;// resistivity (ohm-m)
V = 110; // supply voltage(V)
// Let R ohms be the resistance of the coil and P watts be the power absorbed
// FORMULAE: R=p*L/A , where L is the length of the coil ; P= V^2/R
L= prod([l,N]);// length of the coil(m)
R =prod([p,L])/A;// calculation of resisrance (ohms)
P = (V^2)/R;// power absorbed by the coil (Watts)
disp(R,"resistance of the coil (in ohms)= ")
disp(P,"power absorbed by the coil(in watts)=") 
