//Consider GSM system with following data and show the advantage of adaptive array antennas

kT = -174;
Bw = 200e+3;
F = 7;
SI = 12;

W = 29;
Lc = 2;
fm = 10;
Gbs = 20;
Gm = 0;

Gamma = 4;
PLmax = 139;
I0 = 80;

Acover = 6e+4;

PRmin = kT + (10*log10(Bw)) + F + SI ;
PLmax = W - PRmin - Lc - fm + Gbs + Gm ;
R = (PLmax - I0)^(1/4);
N = Acover/(2.6*R^2);

disp(PRmin, 'Required minimum received power is (in dBm)')
disp(PLmax, 'Max. allowable path loss is (in dB)')
disp(R, 'Cell Radius (in miles)')
disp(N, 'No. of cells required')