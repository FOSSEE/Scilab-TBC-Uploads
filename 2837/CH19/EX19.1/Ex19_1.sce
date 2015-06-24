clc
clear
//Initalization of variables
n=1.4
t1=540 //R
tmax=1200 //F
tmax2=1500 //F
pr=5
cp=0.24
//calculations
t2=t1*(pr)^((n-1)/n)
work=cp*(t2-t1)
t4=(tmax+460) /pr^((n-1)/n)
twork=cp*(tmax+460-t4)
net=twork-work
eff=1- 1/pr^((n-1)/n)
Qs=cp*(tmax+460-t2)
ett=net/Qs *100
t42=(tmax2+460)/pr^((n-1)/n)
twork2=cp*(tmax2+460-t42)
net2=twork2-work
Qs2=cp*(tmax2+460-t2)
eff3=net2/Qs2 *100
//results
printf("Compressor work = %.1f Btu/lb",work)
printf("\n Turbine work = %.1f Btu/lb",twork)
printf("\n Net work = %.1f Btu/lb",net)
printf("\n Thermal efficiency = %.1f percent",eff*100)
printf("\n In case 2, Thermal efficiency = %.1f percent",ett)
printf("\n In case 2, Turbine work = %.1f Btu/lb",twork2)
printf("\n In case 2, Net work = %.1f Btu/lb",net2)
printf("\n In case 3, Thermal efficiency = %.1f percent,",eff3)
