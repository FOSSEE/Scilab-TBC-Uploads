//16.2
clc;
disp('For star connection')
Zph=(12^2+5^2)^0.5;
Eph=440/(3^0.5);
Iph=Eph/Zph;
Il=Iph;
printf("\nLine current=%.2f A",Il)
P_total=(3^0.5)*440*Il*12/(Zph*1000);
printf("\nTotal Power=%.2f kW",P_total)

disp('For Delta connection')
Zph=(12^2+5^2)^0.5;
Eph=440;
Iph=Eph/Zph;
Il=Iph*(3^0.5);
printf("\nLine current=%.2f A",Il)
P_total=(3^0.5)*440*Il*12/(Zph*1000);
printf("\nTotal Power=%.2f kW",P_total)