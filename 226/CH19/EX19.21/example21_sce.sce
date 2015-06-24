//chapter 19
//example 19.21
//page 867
printf("\n")
printf("given")
Vbe=.7;R2=470;R3=1*10^3;Is=.5*10^-3;R7=1.5*10^3;Vcc=15;
Ic2max=Vbe/R2
Ic2min=Vbe/(R2+R3)
Vgs=(Is+Ic2max)*R7;
printf(" MOSFET maximum gate source voltage is %3.1fV\n",Vgs)
Vs=Vcc-Vgs;
printf(" op-amp minimum suppy is %3.2fV\n",Vs)