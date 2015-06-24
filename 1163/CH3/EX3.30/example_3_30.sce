clear;
clc;
disp("--------------Example 3.30---------------")
dBpkm= -0.3 ; // dB/km
p1=2; // 2 mW - initial power
distance = 5; // 5km
dB= dBpkm*distance; // loss in the cable in decibel
ratio=10^(dB/10); // dB=10*log10(ratio)
p2 = p1*ratio; // ratio = p2/p1
printf("The power of the signal at 5 km is %2.1f mW.",p2);// display result
