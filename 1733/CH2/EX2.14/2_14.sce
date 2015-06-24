//2.14
clc;
Vm=230*2^0.5;
alph=30;
Vo=Vm/(2*%pi)*(3+cosd(alph));
Idc=Vo/10;
printf("dc output voltage = %.1f V", Vo )
Pdc=Idc*Vo;
printf("\ndc power = %.2f W", Pdc )
