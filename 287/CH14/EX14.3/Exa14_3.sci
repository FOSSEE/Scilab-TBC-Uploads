//Determine the minimum signal power required

K = 1.38e-20;
T = 290;
Nf = 5;
EbNt = 13.5;
Rb = 271;
Bc = 200;
Tg = 0;
Rg = 12;
Rl = 2.5;
Fm = 10;

Nt = 10*log10(K*T) + Nf;
SNr = EbNt + 10*log10(Rb/Bc);
Smin = EbNt + 10*log10(Rb*1000) + Nt;
Lpmax = 30 - Smin + (Tg+Rg) - (Rl+Fm );

disp(Smin, 'Min. Signal Power Required (in dBm)')
disp(Lpmax, 'Max. allowable path loss (in dB)')