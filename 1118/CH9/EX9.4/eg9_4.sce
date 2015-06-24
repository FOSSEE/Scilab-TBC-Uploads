clear;
//clc();
a=sqrt(3);
r1=5;
r2=1.5;
pf=0.8;
rehv=r1+(a)*(a)*r2;
x1=10;
x2=3;
xehv=x1+(a)*(a)*x2;
rl=2;       //resistance of the line
xl=3;       //recatance of the line
r=rl+rehv;
x=xl+xehv;
s=3000;
v=33000;
i=s*1000/(v*sqrt(3));
vr=v/sqrt(3);
qs=acosd(pf);
z=r+(%i)*x;
vs=vr+z*i*(cosd(-qs)+(%i)*sind(-qs));
vsp=sqrt(real(vs)^2+imag(vs)^2);
vsl=sqrt(3)*vsp;
printf("\n the line voltage at the sending end is: %.2f kv",vsl/1000);

qs1=atand(imag(vs)/real(vs));
pf1=qs1-(-qs);      //negative sign is due to the load is lagging
pf=cosd(pf1);
printf("\n the power factor of the sending end is:%.3f",pf);










  
