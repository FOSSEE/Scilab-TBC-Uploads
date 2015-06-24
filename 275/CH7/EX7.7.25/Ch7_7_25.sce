clc 
disp("Example 7.25")
printf("\n")
disp("calculate side band frequencies & bandwidth \n")
printf("Given")
disp("Fc=600khz,Fm=1khz")
Fc=6*10^5
Fm=10^3
Flsb=Fc-Fm
Fusb=Fc+Fm
BW=2*Fm
printf("Side band frequencies are= %d hz,\t%d hz\n",Flsb,Fusb)
printf("Bandwidth is=%d hz",BW)
