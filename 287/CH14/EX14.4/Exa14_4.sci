//Design a cellular system using GMSK modulation

Smin = -102;
fc = 900;
ht = 160;
ahr = 2.69;
d = 10;
Gt = 16;
Gr = 1;
Lft = 1;
Lfr = 1;
fm = 10.5;

Lp = 69.55 + 26.16*log10(fc) - 13.83*log10(ht) - ahr + (44.9 - 6.55*log10(ht))*log10(d) ;
Pt = Smin - (Gt+Gr) + (Lft + Lfr + fm) + Lp;

disp(Lp, 'Path Loss (in dB)')
disp(Pt, 'Required transmitted power for a GMSK MS (in dBm)')
