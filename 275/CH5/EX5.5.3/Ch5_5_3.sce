clc
disp("Example 5.3")
printf("\n")
disp("Calculate output power change in decibel of amplifier")
printf("Given\n")
//output power when frequency is 5khz
P1=50*10^-3
//output power when frequency is 20khz
P2=25*10^-3
//output power change in decibel
delPo=10*log10(P2/P1)
printf("output power change \n%f dB\n",delPo)
