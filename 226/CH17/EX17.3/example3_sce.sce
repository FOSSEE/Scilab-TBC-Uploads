//chapter 17
//example 17.3
//page 719
printf("\n")
printf("given")
disp("first order high pass active filter")
f=5*10^3;C1=1000*10^-12;fu=1*10^6;
R1=1/(2*3.14*f*C1)
BW=fu-f;
printf(" bandwidth is %dHz\n",BW)