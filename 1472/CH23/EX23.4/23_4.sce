clc
//initialization of variables
V1=587 //fps
etaD=0.9
etaC=0.8
h1=114.69
P1=10 //psia
P3=626;
P6=P1
dhB=-19100 //B/lb
T1=480 //R
//calculations
h2s=etaD*V1^2 /(778*2*32.2) +h1
disp("From tables,")
Pr2s=1.104
Pr1=0.9182
P2=P1*Pr2s/Pr1
h2=h1+(h2s-h1)/etaD
T2=509 //R
Pr2=1.127
Pr3s=Pr2*P3/P2
Pr3s=6.76
h3s=203.2
h3=(h3s-h2)/etaC +h2
T3=930 //R
P3=6*P2
T4=2160 //R
h4=549.35
Pr4=238
h4B=126.66
dh4=422.7
h3B=h4B
dh3=h3-h3B
cp=0.5
Ta=480 //R
Tb=530 //R
dhf=cp*(Tb-Ta)
wratio=(-dh4+dh3)/(dh4+dhf+dhB)
h5s=425.3
Pr5s=93.1
P5=27.6
T5=1801 //R
Pr5=114.28
Pr6s=Pr5*P6/P5
h5=450
h6=351
V6=sqrt(2*32.2*778*(h5-h6))
SI=((1+wratio)*V6 -V1)/(32.2)
v1=53.34*T1/(P1*144)
wa=V1/v1
thrust = wa*SI
SC=wa*0.0174*3600/1840
eff=2545/(SC*-dhB)
//results
printf("Specific impulse = %.1f lb/lb per sec of air",SI)
printf("\n Thrust = %d lb",thrust)
printf("\n Efficiency = %.3f",eff)