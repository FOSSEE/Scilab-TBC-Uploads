//2.13
clc;
disp('For Mid point converter')
Vm=800/(2*2.5);
alph=0;
Vo=Vm/(%pi)*(1+cosd(alph));
Idc=30/2.5;
Pdc=Idc*Vo;
printf("Average output power = %.2f W", Pdc )
disp('For bridge converter')
Vm=800/(2.5);
alph=0;
Vo=Vm/(%pi)*(1+cosd(alph));
Idc=30/2.5;
Pdc=Idc*Vo;
printf("Average output power = %.2f W", Pdc )