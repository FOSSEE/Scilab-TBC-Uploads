clc
//initialization of varaibles
T1=400+460 //R
P1=50 //psia
ratio=1/10
R=53.34
v1=10.065 //cu ft/lb
vfg=1.8447 //cu ft/lb
vg=1.8633 //cu ft/lb
//calculations
v2=v1*ratio
dx=(v2-vg)/vfg
P2=247.3 //psia
disp("From steam tables,")
u2=773 //B/lb
u1=1141.6 //B/lb
du=u2-u1
s1=1.7349 //B/lb R
s2=1.082 //B/lb R
W=T1*(s2-s1) - du
//results
printf("Final pressure =  %.1f psia",P2)
printf("\n Work done = %d B/lb",W)
printf("\n Change in Internal energy = %d B/lb ",du)
