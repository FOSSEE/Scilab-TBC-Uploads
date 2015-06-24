//EX6_1 PG-6.15
clc
Es=20;//rms value of the supply voltage 
Ep=sqrt(2)*Es;//peak value
printf("\n Therefore peak value of the input voltage is %.4f V \n",Ep)
printf("\n Therefore forward and reverse blocking voltge of SCR>%.4f V \n",Ep)
Rl=30;//load resistance
Ih=5e-3;//holding current
Vtm=1.7;//state voltage drop
Vl_peak=Ep-Vtm;
printf("\n Vl_peak=%.4f V \n",Vl_peak)
Il_peak=Vl_peak/Rl;
printf("\n Il_peak=%.4f A \n",Il_peak)
Il_rms=Il_peak/2;
printf("\n rms value of current flowing through the SCR is %.3f A \n",Il_rms)
//SCR current rating should be greater than Il_rms
Es_off=Vtm+Ih*Rl;//voltage which cause SCR to switch off
printf("\n voltage which cause SCR to switch off is %.2f V \n",Es_off)
