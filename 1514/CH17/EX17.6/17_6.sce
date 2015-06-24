//chapter 17
//example 17.6
//page 543
clear all;
clc ;
//given
Rl=50;//load resistance
Po=10;//op power
//peak op voltage
Vp=round(sqrt(2*Rl*Po));
Vr14=0.1*Vp;//when Ip flows
Vr15=Vr14;;
Vce4min=1
Vce3min=Vce4min;
Vr9=3;
Vr10=Vr9;
Vcc=ceil(Vp+Vr14+Vce3min+0.7+Vr9);
printf("\nVCC=%d V",Vcc);
Ip=1000*(2*Po)/Vp;
//dc ip power
Iavg=0.636*Ip*1.1;
Pi=10^-3*Vcc*Iavg;Pi=17.5;
//power in each op Xtor Q7 & Q8
Pr1=(Pi-Po)/2;
Vcemax=Vcc-(-40);
Icmax=ceil(1.1*Ip);
printf("\nTransistor specification for Q7,Q8 are:\nPr=%.2f W,Vcemax=%d V,Icmax=%d mA",Pr1,Vcemax,Icmax);
//power in each op Xtor Q5 & Q6
Vcemax=2*Vcc;
hfe=30;
Icmax=ceil(1.1*Ip/hfe);
Pr=1000*Pr1/hfe;
printf("\nTransistor specification for Q5,Q6 are:\nPr=%d W,Vcemax=%d V,Icmax=%d mA",Pr,Vcemax,Icmax);
