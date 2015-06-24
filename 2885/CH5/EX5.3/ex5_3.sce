//Calculate Vgs and Vds saturation
clear;
clc;
//soltion
//given
Vp=5//V          //pinch off voltage
Idss=-15*10^-3;//A      //drain to source current with gate shorted
Id=-3*10^-3;//A         //saturation current
Vgs=Vp*(1-sqrt(Id/Idss));
Vds=Vgs-Vp;
printf("The gate to source voltage (Vgs) is %.3f V\n",Vgs);
printf("The saturation voltage is Vds(sat)= %.3f V",Vds);

// THe value of Vgs = 2.115V and Vds= -2.885V in book because of the calculation error
