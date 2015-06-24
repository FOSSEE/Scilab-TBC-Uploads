clc
disp("example 6.37")
printf("\n")
disp("calculate voltage gain,input resistance,current through R1")
printf("Given")
disp("Rf=100k,R1=10k")
disp("input voltage is 0.5v")
Rf=10^5
R1=10^4
Af=-Rf/R1
Rif=R1
Vi=0.5
I1=(Vi/R1)
printf("closed loop voltage gain is %3.1f\n",Af)
printf("input resistance is\n %3.1f ohm\n",Rif)
printf("current flowing through R1 is %f ampere\n",I1)
