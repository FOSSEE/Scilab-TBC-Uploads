clc;
clear all;
V = 120000; // Volume of hall in cubic meters
T = 1.5; // Reverberation time
TSA = 25000; // Total absorbing surface area in square meters
A = (0.163*V)/T
TA = A/TSA;//The average absorbing power of the surface
disp('Sabine',TA,'The average absorbing power of the surface is ')
// Slight variation in answer compared to textbook.. there is mistake in book.. checked in calculator also..
