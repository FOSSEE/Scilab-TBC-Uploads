clc
clear
//Initialization of variables
m=5000 ///kg/h
cp=3.2 //kJ/kg K
Ts=30+273.1 //K
t1=220 //C
t2=40 //C
Q=2.88*10^6 //kJ
//calculations
Q=m*cp*(t2-t1)
dss=m*cp*log((t2+273.1)/(t1+273.1))
Wlost=Ts*dss-Q
eff=Ts*dss/Q
//results
printf("Lost work = %d kJ",Wlost)
printf("\n Efficiency = %.3f",eff)
