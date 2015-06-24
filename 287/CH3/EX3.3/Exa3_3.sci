//Determine the capacity & spectral efficiency of a TDMA system

Nb = 0.9;
u = 2;
Bw = 12.5e+6;
Vf = 1;
R = 16.2e+3;
N = 19;

Nu = ( ((Nb*u)/Vf) * (Bw/(R*N)) );
N1 = ( (Nu*R) / (Bw) );

disp(Nu, 'Nu')
disp(N1, 'Spectral Efficiency (in bits/sec/Hz)')
