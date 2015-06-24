// 3.5
clc;
ATC1=1065;
AT=ATC1+273;
Em1=0.82;
Ta=(Em1^(-0.25))*AT;
Em2=0.75;
Taa=(Em2^-0.25)*Ta;
ATC2=Taa-273;
E=ATC1-ATC2;
printf("Error in temperature measurement=%.2f degree C",E)
