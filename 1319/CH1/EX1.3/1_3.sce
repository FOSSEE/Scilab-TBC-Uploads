// To find the current and power of a capacitive circuit

clc;
clear;

Z=10-25*%i;

V=15;

I=V/Z;

theta=atand(imag(I)/real(I));

Pr=V*abs(I)*cosd(theta);
Pq=V*abs(I)*sind(theta);

disp('A',I,'The current flowing through the given impedance =')
disp('watt',Pr,'The real power loss of the capacitive impedance =')
disp('Var',-Pq,'The reactive power of the capacitive circuit =')// Negative sign indicates power genrated.
