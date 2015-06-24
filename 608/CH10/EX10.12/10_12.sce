//Problem 10.12: The ratio of two powers is (a) 3 (b) 20 (c) 400 (d) 1/20. Determine the decibel power ratio in each case.

//initializing the variables:
rP1 = 3; // ratio of two powers
rP2 = 20; // ratio of two powers
rP3 = 400; // ratio of two powers
rP4 = 1/20; // ratio of two powers

//calculation:
X1 = 10*log10(3)
X2 = 10*log10(20)
X3 = 10*log10(400)
X4 = 10*log10(1/20)

printf("\n\n Result \n\n")
printf("\n (a)decibel power ratio for power ratio 3 = %.2f dB ",X1)
printf("\n (b)decibel power ratio for power ratio 20 = %.1f dB ",X2)
printf("\n (c)decibel power ratio for power ratio 400 = %.1f dB ",X3)
printf("\n (d)decibel power ratio for power ratio 1/20 = %.1f dB ",X4)