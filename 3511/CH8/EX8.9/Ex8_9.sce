clc;
P=180*10^3; // Power input in J
N=15000; // Speed in rpm
a1=25; // in degrees
De=0.25; // Mean dia of the eye in m
Di=0.6;// Impeller tip diameter in m
c1=150; // Absolute air velocity at inlet in m/s

u1=3.14*De*N/60;
u2=3.14*Di*N/60;
ct1=c1*sind (a1);
ct2=(P+(u1*ct1))/u2;
mu=ct2/u2;
z=(1.98)/(1-mu); // Number of impeller vanes
disp(z,"Number of impeller vanes using Stanitz formulae = ");
