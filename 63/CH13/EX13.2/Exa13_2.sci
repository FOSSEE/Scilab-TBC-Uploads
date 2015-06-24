//Determine (a) the information-carrying capacity (b) the capacity of the channel if its bandwidth is doubled, while the transmitted signal power remains constant

SNR = 10^(28/10);
BW1 = 4000;
BW2 = 8000;

C1 = BW1*log2(1+SNR);
C2 = BW2*log2(1+(SNR/2));

C = C2/C1;

disp(C1, 'Information-carrying capacity is (in bits/sec)');
disp(C2, 'Capacity of the channel if its bandwidth is doubled is (in bits/sec)');