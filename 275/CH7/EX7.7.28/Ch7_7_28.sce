clc
disp("Example 7.28")
printf("\n")
disp("Determine the radiated power at a modulation index of 0.6")
printf("Given")
disp("carrier power=50Khz, modulation index=0.6")
Pc=5*10^4
Ma=0.6
Pt=Pc*(1+(Ma^2/2))
printf("The total power in modulated wave =\n%f watt",Pt)
