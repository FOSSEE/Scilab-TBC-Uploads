clear;
//clc();
s3q=10*10^6;
vl=10.5*1000;
il=s3q/(sqrt(3)*vl);
iph=il;
zph=5;
printf("\n Voltage drop in the line is: %.2f V",zph*iph);

//b).using per unit method to soolve

sb=10;
vlb=11;
vpu=vl/vlb;
sb3q=12;
spu=s3q/sb3q;
ipu=spu/vpu;

zpu=zph*sb3q/vlb^2;
v=zpu*ipu*vlb/sqrt(3);
printf("\n voltage drop in the line per phase is: %.2f V",v);
