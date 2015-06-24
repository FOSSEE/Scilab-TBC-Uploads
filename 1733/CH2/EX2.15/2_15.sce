//2.15
clc;
Vm=230*2^0.5;
Vo=2*Vm/%pi;
Idc=Vo/10;
printf("dc output voltage = %.2f V", Vo )
Pdc=Idc*Vo;
printf("\ndc power = %.2f W", Pdc )
