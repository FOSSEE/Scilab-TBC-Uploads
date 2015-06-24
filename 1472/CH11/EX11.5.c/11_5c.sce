clc
//initialization of varaibles
P1=100 //psia
T1=2000+460 //R
P2=15 //psia
g=1.4
cp=0.276
cv=0.207
T2=1520 //R
//calculations
h1=634.4
pr1=407.3
pr2=pr1*P2/P1
disp("From table 1,")
T2=1535 //R
h2=378.44
dh=h2-h1
v2=53.34*T2/(P2*144)
dv=v2-v1
//results
printf("Enthalpy change = %.2f B/lb",dh)
printf("\n Volume change = %.1f cu ft/lb",dv)
