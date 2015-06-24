clc;
clear all;
deltas = 10e8; // Difference between principal stress in newton per square meters
c = 1e-12; // The stress optic coefficient in squared meters per newton
N = c*deltas; 
disp('',N,'The difference between the refractive indices along with the principal stresses is')
