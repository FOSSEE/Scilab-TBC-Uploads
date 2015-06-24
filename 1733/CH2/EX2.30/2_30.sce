//2.30
clc;
Vm=415*2^0.5/3^0.5;
Vdc=460;
Idc=200;
alph=acosd(Vdc*%pi/(3*3^0.5*Vm));
printf("Firing Angle = %.2f degree", alph)
Pdc=Vdc*Idc;
printf("\ndc Power = %.2f W", Pdc)
Iac=Idc*(120/180)^0.5;
printf("\nAC line current = %.2f A", Iac)
Ip=Idc;
Irms_thy=Ip*(120/360)^0.5;
printf(" \nRMS thyristor current = %.1f A", Irms_thy)
