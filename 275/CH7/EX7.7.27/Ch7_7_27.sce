clc
disp("Example 7.27")
printf("\n")
disp("Calculate the total power in the modulated wave")
printf("Given")
disp("carrier power=400W,modulation index=75%")
Pc=400
Ma=0.75
Pt=Pc*(1+(Ma^2/2))
printf("The total power in modulated wave =\n%f watt",Pt)
