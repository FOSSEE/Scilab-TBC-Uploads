clc
disp("Example 6.56")
printf("\n")
printf("Given")
disp("open loop gain is 100")
disp("Gain Bandwidth Product is 1MHz")
Af=100
GBW=10^6
ReqBandwidth=GBW/Af
RfbyR1=Af-1
printf("the ratio of resistance is=%f",RfbyR1)