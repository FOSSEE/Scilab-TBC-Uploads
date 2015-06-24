clear;
//clc();
//a).unity power factor

s=200;
vr=2500;
r=1.4;
x=0.8;
i=s*1000/vr;
z=r+(%i)*x;
vs=vr+z*i;
qs=atand(imag(vs)/real(vs));
pf=cosd(qs);
printf("the power factor of the sending end is:%.4f\n ",pf);

//b).load power factor =0.8

pfl=acosd(0.8);
vs=vr+z*i*(cosd(-pfl)+(%i)*sind(-pfl));
qs=atand(imag(vs)/real(vs));
pf1=qs-(-pfl);      //negative sign is due to the loadis lagging
pf=cosd(pf1);
printf(" the power factor of the sending end is:%.3f\n",pf);

//c).load factor is 0.8 leading

pfl=acosd(0.8);
vs=vr+z*i*(cosd(pfl)+(%i)*sind(pfl));
qs=atand(imag(vs)/real(vs));
pf1=qs-(pfl);      //negative sign is due to the loadis lagging
pf=cosd(pf1);
printf(" the power factor of the sending end is:%.3f\n",pf);
