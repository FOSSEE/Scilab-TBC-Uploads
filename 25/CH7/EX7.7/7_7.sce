// example:-7.7,page no.-367.
// program to find the value of the coupling capacitor required for critical coupling.
l=0.02175;Zo=50;eipsilae=1.9;c=3*10^8;
fo=c/(2*l*sqrt(eipsilae)); // first resonant frequency will occur when the resonator ia about l=lamdag/2 in length.
lamdag=c/fo;
alpha=1/8.7; // in Np/m.
Q=%pi/(2*l*alpha);
bc=sqrt(%pi/(2*Q));
C=bc/(2*%pi*fo*Zo)*10^12;
disp(C,'coupling capacitor in pF = ')
C=bc/(2*%pi*fo*Zo);
w1=atan(2*%pi*fo*C*Zo)*c/(l*sqrt(eipsilae));  // from equation tan(B*l)=-bc;
w1=w1*10^-8;
disp(w1,'frequency in GHZ = ')