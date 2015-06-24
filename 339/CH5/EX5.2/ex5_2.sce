//define problem parameters

Z0=50; //characteristic line impedance
ZG=50; //source impedance
ZL=50; //load impedance

//series RLC filter parameters
R=10;
L=50e-9;
C=0.47e-12;

VG=5; //generator voltage

//compute series resonance frequency
w0=1/sqrt(L*C);
f0=w0/(2*%pi);

//define a frequency range
delta=0.2;
w=((1-delta):2*delta/1000:(1+delta))*w0;

//compute quality factors
Q_LD=w0*L/(R+2*ZL) //loaded quality factor
Q_F=w0*L/R //filter quality factor
Q_E=w0*L/(2*ZL) //external quality factor

// compute Bandwidth
BW=f0/Q_LD

//compute input and load power
P_in=VG^2/(8*Z0)
P_L=P_in*Q_LD^2/Q_E^2

//compute insertion loss and load factor
epsilon=w/w0-w0./w;
LF=(1+epsilon.^2*Q_LD^2)/(1-Q_LD/Q_F)^2; 
IL=10*log10(LF);

disp(Q_LD,"Loaded Quality Factor");
disp(Q_F,"Filter Quality Factor");
disp(Q_E,"External Quality Factor");
disp("Watts",P_in,"Input Power");
disp("Watts",P_L,"Power delivered to the load");
disp("Hertz",f0,"resonance frequency of the filter");
disp("Hertz",BW,"Bandwidth of the filter");
plot(w/2/%pi/1e9,IL);
title('Insertion loss versus frequency');
xlabel('Frequency, GHz');
ylabel('Insertion loss, dB');