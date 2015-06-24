//Determine frequency present in the unwanted lower sideband

x = 2*(%pi/180);

a = 1/sin(x);

p = 20*log10(a);

disp(p, 'Frequency present in the unwanted lower sideband is (in dB)')