//16.8
clc;
R=3;
XL=4;
Z=(R^2+XL^2)^0.5;
Iph1=440/(3^0.5*Z);
IL1=Iph1;
printf("\nLine current=%.1f A",IL1)
P=3*Iph1^2*R;
printf("\nPower=%.0f W",P)
pf1=R/Z;
printf("\npower factor=%.2f (lag)",pf1)
IL2=IL1*(4/5);
Iph2=IL2/3^0.5;
XL2=440/Iph2;
C2=1*10^6/(2*50*28.755);
printf("\nCapacitance=%.1f uF",C2)