//Find carrier and modulating frequencies, modulation index and max. deviation of FM wave. Also find power dissipated in FM wave

wc = 6e+8;
wm = 1250;
%pi;
mf = 5;
Vrms = 12/sqrt(2);
R = 10;

fc = wc/(2*%pi);
fm = wm/(2*%pi);
del = mf*fm;
P = (Vrms)^2/R;

disp(fc, 'Carrier Frequency (in Hz)')
disp(fm, 'Modulation Frequency (in Hz)')
disp(mf, 'Moduation Index')
disp(del, 'Max. Deviation (in Hz)')
disp(P, 'Power dissipated in FM wave (in W)');