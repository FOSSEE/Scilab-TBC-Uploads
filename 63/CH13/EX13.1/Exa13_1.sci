//Determine the capacity of a standard 4-Khz telephone channel

SNR = 10^(32/10);
df = 3400-300;

C = df*log2(1 + SNR);

disp(C, 'capacity of a standard 4-Khz telephone channel is (in bits/sec)')