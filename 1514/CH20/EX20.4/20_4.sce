//chapter 20
//example 20.4
//page 649
clear all;
clc ;
//given
Ip=1;//mA
Vp=65;//mV
Id=1;//mA
Vd=65;//mV
Iv=0.12;//mA
Vv=350;//mV
Vf=500;//mV
Id=[0 Id Iv Iv Ip]
Ed=[0 Vd Vv 450 Vf];
plot(Ed,Id,'-.*');
xtitle('piecewise linear characteristics','Ed in mV','Id in mA');
Rd=-(350-65)/(1-0.12);
printf("\nValue of RD=%d ohm",round(Rd));
