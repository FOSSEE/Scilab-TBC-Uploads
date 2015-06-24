clc
disp("Example 7.36")
printf("\n")
disp("Calculate sideband frequencies,bandwidth,power in sidebands,Total power")
printf("Given")
disp("carrier power=1KW,carrier frequency=2MHz,Modulation frequency=2KHz,Modulation index=0.6")
Pc=10^3
Fc=2*10^6
Fm=2*10^3
Ma=0.6
Flsb=Fc-Fm
Fusb=Fc+Fm
BW=2*Fm
Plsb=Ma^2*Pc/4
Pusb=Plsb
Pt=Pc*(1+(Ma^2/2))
printf("Sideband frequencies are=\n%d hz,\t%d hz\n",Flsb,Fusb)
printf("Bandwidth=%d hz\n",BW)
printf("Power in sidebands=\n%f watt,\t%f watt\n",Plsb,Pusb)
printf("Total power=\n%f watt",Pt)
