//Exa 7.9
clc;
clear;
close;
// given :
c=3*10^8 // speed of light in m/s
f=10 // frequency in GHz
f=10*10^9 // frequency in Hz
lambda=c/f // wavelength in m
G_p=75 // power gain in dB
// formula : G_p=10*log10(G_p) // power gain in dB
G=10^(G_p/10) // simple power gain
// formula : G=6.4*(D_a/lambda)^2 // power gain
D_a=lambda*(sqrt(G/6.4)) // mouth Diameter of paraboloid in m
A=%pi*(D_a)^2/4 // Actual area in m^2
A_c=0.65*A // capture area in m^2
BWFN=140*(lambda/D_a) // null-to-null beamwidth in degrees
HPBW=70*(lambda/D_a) // half power beamwidth in degrees
disp(BWFN,"null-to-null beamwidth in degrees:")
disp(HPBW,"half power beamwidth in degrees:")
disp(A_c,"capture area in m^2:")



//note : answer of A_c in book is 2269.83 m^2  but in scilab 2270.20 m^2
