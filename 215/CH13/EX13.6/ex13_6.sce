clc
//Example 13.6
printf("Given")
disp('L1=30 mH L2=60 mH M=40 mH')
L1=30*10^-3; L2=60*10^-3; M=40*10^-3;
//Let X=L1*L2-M^2
X=L1*L2-M^2
//The equivalent PI network is 
LA=X/(L2-M)
LB=X/M
LC=X/(L1-M)
printf("The PI network has \n")
printf("LA=%3.0f mH\n",LA*10^3)
printf("LB=%3.0f mH \n",LB*10^3)
printf("LC=%3.0f mH\n",LC*10^3)