// Determine the original and loaded circuit bandwidth

clc;
clear;

f0=1000*(10^3);
V=5;
Q=50;
Xl=2*(10^3);
Xc0=2*(10^3);
R1=40*(10^3); // Branch near the source
R2=Q*Xl; // Branch with both the inductor and resitance

Z0=Q*Xc0;

bw=f0/Q; // Original Bandwidth

// Considering loading resistance

Reff= R1*R2/(R1+R2);
Qd=Reff/Xc0;

bw1=f0/Qd; // Bandwidth with loading resistance

printf('The original bandwidth = %g kHz\n',bw/1000)
printf('The loaded circuit bandwidth = %g kHz\n',bw1/1000)

