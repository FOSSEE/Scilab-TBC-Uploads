//Design a cellular system for PCS system using QPSK modulation

Smin = -91.4;
fc = 1800;
ht = 50;
ahr = -4.53;
d = 1;
Gt = 12;
Gr = 0;
Lft = 1;
Lfr = 1;
fm = 10.5;

Lp = 69.55 + 26.16*log10(fc) - 13.83*log10(ht) - ahr + (44.9 - 6.55*log10(ht))*log10(d) ;
Pt = Smin - (Gt+Gr) + (Lft + Lfr + fm) + Lp;

disp(Lp, 'Path Loss (in dB)')
disp(Pt, 'Required transmitted power for a GMSK MS (in dBm)')
