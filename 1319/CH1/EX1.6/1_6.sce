// Determine the value of the circuit components

clc;
clear;

Z=10-(30*%i);

f=1*(10^6);

Y=1/Z;

G=real(Y);
B=imag(Y);

// G= 1/R
// B= wC


w=2*%pi*f;

R=1/G;

C=B/(w);

cap=abs((10^9)*C)/(10^9);

disp('ohms',R,'The resistance of the circuit =')
disp('nF',cap,'The capacitance of the circuit =')
