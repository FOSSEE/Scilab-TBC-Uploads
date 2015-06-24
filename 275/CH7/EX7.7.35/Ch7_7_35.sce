clc
disp("Example 7.35")
printf("\n")
disp("Determine power content of carrier & each sideband")
printf("Given\n")
disp("Total power=2.64KW,modulation index=80%")
Pt=2.64*10^3
Ma=0.8
Pc=Pt/(1+(Ma^2/2))
Plsb=Ma^2*Pc/4
Pusb=Plsb
printf("The total power is=%f watt\n",Pc)
printf("The sideband power is=\n%f watt,\t%f watt",Plsb,Pusb)
