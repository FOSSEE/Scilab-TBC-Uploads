//Chapter-2 Ex-2.2 Pg-2.18
clc
clear;
disp("refer to the Figure-2.19 given ")
disp("from the characteristics at point P, Vf=0.7V,If=60mA")
Vf=0.7;
If=0.06;
Rf=Vf/If;//DC forward resistance
printf("\n DC forward resistance Rf : %.2f ohm\n",Rf)
disp("as the forward voltage changes from P to Q")
delta_Vf=0.77-.7;
delta_If=(120-60)*10^(-3);
rf=delta_Vf/delta_If;//dynamic forward resistance
printf("\n Dynamic forward resistance rf : %.3f ohm",rf)
