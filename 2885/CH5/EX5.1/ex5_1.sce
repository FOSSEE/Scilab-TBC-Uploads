//Calculate saturation voltage and saturation current
clear;
clc;
//soltion
//given
Vp=-4//V          //pinch off voltage
Idss=12*10^-3;//A      //drain to source current with gate shorted
Vgs=-2;//V             //gate to source voltage
Vds=Vgs-Vp;
Id=Idss*(Vds/Vp)^2;
printf("Saturation Voltage is %.0f V\n",Vds);
printf("Saturation current is %.0f mA",Id*10^3);
