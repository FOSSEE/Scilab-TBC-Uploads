clc;
clear all;
sap = 1.01e5; // Standard atmospheric pressure in newton per square meters
k = 16e10;// Bulk modulus in newton per square meters
deltaV = 1.009e5 ;// Change in pressure in newton per square meters
C = deltaV/k;
disp('V*m^3',C,'The fractional change of volume is')
