clc;
// page no 70
//prob no 2.5
C=80*10^-12; L= 100*10^-6;
//Part a) The resonent frequency is 
f0=1/(2*%pi*sqrt(L*C));
disp('Hz',f0,'The resonent freq is');
// Part b) In this part the circuit is resonate on doubling the frequency,therefore
f1=2*f0;
// from the equation of resonent frequency 
C1=1/(4*(%pi*f1)^2*L);
// Now for tuning voltage  we have to use equation C1=Co/sqrt(1+2V)
Co=C;
// after solving the expression
v=((Co/C1)^2 -1)/2;
disp('V',v,'The tuning voltage is ');