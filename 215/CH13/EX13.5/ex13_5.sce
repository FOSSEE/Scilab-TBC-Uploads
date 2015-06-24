clc
//Example 13.5
printf("Given")
disp('L1=30 mH L2=60 mH M=40 mH')
L1=30*10^-3; L2=60*10^-3; M=40*10^-3;
//The equivalent T network is 
UL=L1-M
UR=L2-M
CS=M
printf("The T network has \n")
printf("%d mH in the upper left arm\n",UL*10^3)
printf("%3.0f mH in the upper right arm\n",UR*10^3)
printf("%d mH in the center stem\n",CS*10^3)