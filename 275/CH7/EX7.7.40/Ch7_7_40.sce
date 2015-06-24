clc
disp("Example 7.40")
printf("\n")
disp("Calculate modulation index")
printf("Given\n")
disp("maximum & minimum amplitudes are 600mv,200mv")
Vmax=600*10^-3
Vmin=200*10^-3
Ma=(Vmax-Vmin)/(Vmax+Vmin)
printf("Modulation Index is =\n%f",Ma)