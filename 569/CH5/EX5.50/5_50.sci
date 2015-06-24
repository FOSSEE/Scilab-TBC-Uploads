// Calculate maximum velocity of emitted photo electrons
clc;
E_imparted=(1.24*10^-6)/(0.2537*10^-6);
B_energy=E_imparted-4.30;
em_ratio=0.176*10^12;
v=(2*B_energy*em_ratio)^0.5;
disp(v,'maximum velocity of emitted photo electrons (m/s)')