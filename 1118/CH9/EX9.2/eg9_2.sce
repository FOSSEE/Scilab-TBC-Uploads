clear;
//clc();
s=15000/3;
v=33000/sqrt(3);
pf=0.85;
l=8;
r=.29*l;
x=0.65*l;
i=s*1000/v;
qs=acosd(pf);
op=3*s*1000*pf;
ploss=3*i*i*r;

z=r+(%i)*x;
vs=v+z*i*(cosd(-qs)+(%i)*sind(-qs));
vsp=sqrt(real(vs)^2+imag(vs)^2);
vsl=sqrt(3)*vsp;
printf("\n the line voltage at the sending end is: %.2f kv",vsl/1000);

//b)phase difference
qs1=atand(imag(vs)/real(vs));
pf1=qs1-(-qs);      //negative sign is due to the load is lagging
pf=cosd(pf1);
printf("\n the power factor of the sending end is:%.4f",pf);

//c).line regulation

lr=(vsp-v)/v;
printf("\n the line regulation of is:%.2f",lr);

//d).efficiency

n=op/(op+ploss);
printf("\n the transission efficiency is: %.2f percent",n*100);









