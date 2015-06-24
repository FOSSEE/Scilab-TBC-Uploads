//Determine the cutoff frequency of the dominant mode

m = 1;
n = 0;
a = 0.051;
b = 0.024;

fc = (1.5e+8)*sqrt((m/a)^2 + (n/b)^2);

disp(fc, 'Cutoff Frequency of the dominant mode is (in Hz)')