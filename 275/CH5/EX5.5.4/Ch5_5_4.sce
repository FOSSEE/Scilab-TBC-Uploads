clc
disp("Example 5.4")
printf("\n")
disp("Calculate output power change in decibel of amplifier")
printf("Given\n")
//output voltage of amplifier when frequency 3khz
V1=2
//output voltage of amplifier when frequency 50khz
V2=0.5
//output power change in decibel
delPo=20*log10(V2/V1)
printf("output power change \n%f dB\n",delPo)
