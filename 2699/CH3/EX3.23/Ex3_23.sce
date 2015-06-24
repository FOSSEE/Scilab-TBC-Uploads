//EX3_23 PG-3.59
clc
Rf=0.1;//riplle facto
Edc=10;
Vrip=Rf*Edc;//rms value of voltage
printf("\n rms value of ripple voltage is %.0f V \n ",Vrip)
Vp_p=2*sqrt(2)*Vrip;
printf("\n peak to peak voltage is %.4f V ",Vp_p)
