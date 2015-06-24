clc
disp("Example 7.37")
printf("\n")
disp("Calculate the modulation index")
printf("Given\n")
disp("carrier voltage=100V,Total modulated voltage in rms=110V")
Vt=110
Vcar=100
//assume R value as 1
R=1
Pt=Vt^2/R
Pc=Vcar^2/R
Ma=sqrt(2*((Pt/Pc)-1))
printf("Modulation index =%f",Ma)