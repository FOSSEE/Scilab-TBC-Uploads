clc
disp("Example 7.34")
printf("\n")
disp("calculate carrier power")
printf("Given\n")
disp("total power=10KW,modulation index=0.6")
Pt=10^4
Ma=0.6
Pc=Pt/(1+(Ma^2/2))
printf("The carrier power is=%f watt\n",Pc)
