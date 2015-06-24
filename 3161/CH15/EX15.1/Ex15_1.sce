clc;
//page 764
//problem 15.1

//Signal Power data rate fb = 100 Kbps
fb = 10^5;

//Signal Strength Ps = 1 mW
Ps = 1*10^(-3);

//Chip frequency fs = 100 MHz
fs = 10^8;

//Noise Spectral Density n = 2*10^(-9) W/Hz
n = 2*10^(-9);

//Jamming Signal power is Pj = 1 W
Pj = 1;

//Processing Gain P
P = fs/fb;
disp('Processing Gain is '+string(P));

//Bit Interval T
T = 1/fb;
disp('Bit Interval is '+string(T)+'s');

//Energy per bit Eb
Eb = Ps*T;
disp('Energy per bit is '+string(Eb));

//Error Probability without jamming E_without_jamming
E_without_jamming = 0.5*erfc((Eb/(n))^0.5);
disp('Error probability without jamming is '+string(E_without_jamming));

//Error Probability with jamming E_jamming
E_jamming = 0.5*erfc(((2*Ps*P)/(Pj))^0.5);
disp('Error probability jamming is '+string(E_jamming));


