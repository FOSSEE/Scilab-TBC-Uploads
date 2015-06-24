//Determine the lowest frequency and also the mode closest to the dominant mode for the waveguide in previous example

m1 = 0;
n1 = 1;
a1 = 0.051;
b1 = 0.024;

fc1 = (1.5e+8)*sqrt((m1/a1)^2 + (n1/b1)^2);

disp(fc1, 'Cutoff Frequency of the TE10 mode is (in Hz)')



m2 = 2;
n2 = 0;
a2 = 0.051;
b2 = 0.024;

fc2 = (1.5e+8)*sqrt((m2/a2)^2 + (n2/b2)^2);

disp(fc2, 'Cutoff Frequency of the TE20 mode is (in Hz)')



m3 = 0;
n3 = 2;
a3 = 0.051;
b3 = 0.024;

fc3 = (1.5e+8)*sqrt((m3/a3)^2 + (n3/b3)^2);

disp(fc1, 'Cutoff Frequency of the TE02 mode is (in Hz)')
