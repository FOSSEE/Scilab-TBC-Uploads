//chapter 17
//example 17.3
//page 528
clear all;
clc ;
//given
Rl=16;//load resistance
Vcc=30;//supply voltage
eta=0.8;//Xformer efficiency
Po=4;
Po1=Po/eta;//ac power delivered to Xformer primary
Vp=Vcc;
Rl1=(Vp^2)/(2*Po1);
Rl2=4*Rl1;
printf("\nTransformer specification are:\nPo=%d W\nRl=%d ohm\nRl'''' =%d ohm center tapped",Po,Rl,Rl2);
//max Xtor vol
Vcemax=2*Vcc;
Ip=(2*Po1)/Vp;
//max Xtor current
Icmax=1000*Ip;
//dc ip power
Iavg=0.636*Ip*1000;
Pi=10^-3*Vcc*Iavg;
//power in each op Xtor
Pr=(Pi-Po1)/2;
printf("\nTransistor specification are:\nPr=%.2f W\nVcemax=%d V\nIcmax=%d mA",Pr,Vcemax,Icmax);



