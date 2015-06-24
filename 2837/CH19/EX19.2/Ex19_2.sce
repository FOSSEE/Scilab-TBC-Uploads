clc
clear
//Initalization of variables
work=75.9 //Btu/lb
twork=173.5 //Btu/lb
eta=0.8
t2=856 //R
t1=540 //R
t4=1960 //R
cp=0.24
//calculations
cwork=work/eta
internal=twork*eta
net=-cwork+internal
t2d=(t2-t1)/eta + t1
Qs=cp*(t4-t2d)
eff=net/Qs *100
//results
printf("Indicated compressor work = %.1f Btu/lb",cwork)
printf("\n Internal work = %.1f Btu/lb",internal)
printf("\n Net work = %.1f Btu/lb",net)
printf('\n Thermal efficiency = %.2f percent",eff)
