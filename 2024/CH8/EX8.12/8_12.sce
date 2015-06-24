clc
//Initialization of variables
stroke=14 //in
n=1.3
rpm=130
pa=14.7 //psia
ta=80+460 //R
c=0.03
p1=pa
p4=200 //psia
R=53.3
cap=400 //cfm
m=29.4
cp=0.24
//calculations
pi=sqrt(pa*p4)
nv=1+c-c*(pi/p1)^(1/n)
Dl=cap/nv
vdl=Dl/(2*rpm)
dl=sqrt(vdl*1728*4/(%pi*stroke))
vh=cap*p1/pi
Dh=vh/nv
vdh=Dh/(2*rpm)
dh=sqrt(vdh*1728*4/(%pi*stroke))
m=p1*144*cap/R/ta
T2=ta*(pi/p1)^((n-1)/n)
Q=m*cp*(T2-ta)
//results
printf("diameter of cylinder 1 = %d in",dl)
printf("\n diameter of cylinder 2 = %.2f in",dh)
printf("\n Heat transferred = %d Btu/min",Q)
