clc;
clear;
printf("\t\t\tChapter5_example1\n\n\n");
// properties of CO at 300K from appendix table D2
Cp=871;
Gamma=1.3;
Cv=Cp/Gamma;
printf("\nThe specific heat at constant volume is %d J/(kg.K)",Cv);
dT=20;
m=5;
Qp=m*Cp*dT;
Qv=m*Cv*dT;
printf("\n The heat required at constant pressure is %.1f kJ",Qp/1000);
printf("\nThe heat required at constant volume is %d kJ",Qv/1000);
