//Determine the spectral efficiency using the given parameters

Bw = 12.5e+3;
Cd = 200;

A = 8;
At = 4000;
N = 4;
F = 4;

C = Bw/Cd;
Tc = C*A;
Ts = 3;
Tc1 = ((Tc/F) - Ts);
N1 = At/A;
T1 = 108.4

N = (T1*N1*1e+3)/(At*Bw);

disp(C, 'No. of 200 Khz channels')
disp(Tc, 'No. of traffic channels')
disp(Ts, 'No. of signaling channels')
disp(Tc1, 'No. of traffic channels per cell')
disp(N1 , 'No. of cells')
disp(T1, 'Total traffic carried by 121 channels with 2% blocking (using Erlang B Formula)')


disp(N, 'Efficiency (in Erlangs/Mhz/km2)')