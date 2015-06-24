//2.34
clc;
Vm=400*2^0.5/3^0.5;
f=50;
w=2*%pi*f;
L=60*10^-3;
alph=0;
disp('Circulating current at wt=0')
wt=0;
ir=3*Vm/(w*L)*(sind(wt-30)-sind(alph))
printf("Circulating current at wt 0 is= %.3f A", ir)
disp('Circulating current at wt=30')
wt=30;
ir=3*Vm/(w*L)*(sind(wt-30)-sind(alph))
printf("Circulating current at wt 30 is= %.3f A", ir)
disp('Circulating current at wt=90')
wt=90;
ir=3*Vm/(w*L)*(sind(wt-30)-sind(alph))
printf("Circulating current at wt 90 is= %.3f A", ir)
disp('Maximum Circulating current will occur at wt=120')
wt=120;
ir=3*Vm/(w*L)*(sind(wt-30)-sind(alph))
printf("Maximum Circulating current is= %.3f A", ir)