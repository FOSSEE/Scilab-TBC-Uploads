//Ex15_3 Pg-774
clc

Em=5 //modulated wave amplitude
Ec=100 //carrier wave amplitude
Fm=50 //frequency of modulated wave
Fc=10*10^(3) //frequency of carrier wave 

disp("(1) Modulation Factor")
m=Em/Ec //modulation factor
per_m=m*100 //modulation factor in percentage
printf("                m = %.0f %%",per_m)

disp("(2) Amplitude of each sideband = m*Ec/2")
Amp=m*Ec/2 //amplitude of each sideband
printf("                = %.1f",Amp)

USB=Fc+Fm //upper side band
LSB=Fc-Fm //lower side band
disp("(3) Frequenc of sidebands")
printf("        USB = %.0f Hz \n",USB)
printf("        LSB = %.0f Hz \n",LSB)

disp("(4) Bandwidth of the wave")
BW=2*Fm //Bandwidth
printf("        BW = %.0f",BW)
