//16.7
clc;
disp('Star connections')
R=20;
Iph=440/(3^0.5*R);
P_total=3*Iph^2*R;
disp('when one of the resistor get disconnected')
Iph=440/(2*20);
P_total_new=2*Iph^2*R;
P_reduction=(P_total-P_total_new)*100/P_total;
printf("\nReduction in Power=%.2f percent",P_reduction)
disp('Delta connections')
R=20;
Iph=440/(R);
P_total=3*Iph^2*R;
disp('when one of the resistor get disconnected')
Iph=440/(20);
P_total_new=2*Iph^2*R;
P_reduction=(P_total-P_total_new)*100/P_total;
printf("\nReduction in Power=%.2f percent",P_reduction)