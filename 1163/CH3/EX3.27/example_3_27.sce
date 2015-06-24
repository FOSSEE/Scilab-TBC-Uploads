clear;
clc;
disp("--------------Example 3.27---------------")
ratio=10; // power of signal after amplification/initial power of signal = p2/p1
amp=10*log10(ratio);  // formula to calculate amplification or gain of power
printf("The amplification is %d dB.",amp); // display result
