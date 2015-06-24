//EX3_7 PG-3.30
clc
Rf=1;
Es=10;
Rs=5;
Esm=sqrt(2)*Es;
Edc_nl=2*Esm/%pi;
printf("Therefore o load DC output voltage is %.4f V \n",Edc_nl)
Idc=100e-3;
disp("We know that Idc=2Im/pi and Im=Esm/(Rf+rs+rl)")
Im=Idc*%pi/2;
Rl=Esm/Im-Rf-Rs;//load resistance
Edc_ol=Idc*Rl;//DC output voltage at 100mA
printf("\n DC output voltage at 100mA is %.4f V \n ",Edc_ol)
%reg=(Edc_nl-Edc_ol)/Edc_ol*100;
printf("\n percentage regulation is %.2f %%",%reg)
