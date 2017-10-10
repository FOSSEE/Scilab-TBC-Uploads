// Ex 42 Page 386

clc;clear;close;
// Given
V1=250;//V
V2=150;//V
Vs1=200;//V
Load1=5;//kW
pf1=0.8;//lagging
Load2=2;//kW
pf2=1;//unity
Vs2=100;//V

I1=Load1*1000/V1/pf1;//A
t1_ratio=V1/Vs1;//
Ip1=I1*t1_ratio;//A at 0.8 pf (current drawn by primary)

I2=Load2*1000/Vs2/pf2;//A
t2_ratio=Vs2/V2;//
Ip2=I2*t2_ratio;//A at 0.8 pf (current drawn by primary)

Ipx=Ip1*pf1+Ip2;//A
Ipy=Ip1*sqrt(1-pf1**2);//A
I3=sqrt(Ipx**2+Ipy**2);//A
printf("Current drawn by the transformer=%.2f A",I3)
pf=Ipx/I3;//power factor
printf("\n power factor = %.1f lagging",pf)
