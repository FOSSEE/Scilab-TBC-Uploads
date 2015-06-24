//EX4_4 PG4.15
clc
Icbo=5e-6;//leakage current
Ic=20e-3;//collector current
Ie=Ic/0.996;//Ic=o.996Ie
alpha_dc=Ic/Ie;
printf("\n alpha_dc=%.3f \n",alpha_dc)
disp("We know that Ic=alpha_dc*Ie+Icbo ")
disp("Therefore emitter current is Ie=(Ic-Icbo)/alpha_dc")
Ie=(Ic-Icbo)/alpha_dc;//emitter current
Ie=Ie*1e3;
printf("\n emitter current is %.2f mA",Ie)
