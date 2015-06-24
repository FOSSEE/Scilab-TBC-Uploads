//Calculate volume of conductor required in 1 phase 2 wire and 3 phase 3 wire system
clear;
clc;
//solution
//given
pf=0.8;//power factor
pMVA=(2.5*10^6);//volt ampere
v=(33*10^3);//volts
l=50*10^3;//m//length of the line
p=pMVA*pf;//watts//power trasmitted = power in MVA* p.f.
w=0.2*p;//watts//line losses = 20% of power transmitted
d=2.85/10^8;//ohm meter//resistivity of aluminium
printf(" 1 phase 2 wire system\n");
i1=pMVA/v;
a1=(2*i1^2*d*l)/w;
printf(" Load current in 1 phase 2 wire system= %f ampere\n",i1);
printf(" Cross sectional area of 1 phase 2 wire system= %f m^2\n",a1);
vol1=2*a1*l;
printf(" Volume of aluminium conductor required in 1 phase 2 wire system = %f meter cube \n\n",vol1);
printf(" 3 phase 3 wire system\n");
i2=pMVA/(3^0.5*v);
a2=(3*i2^2*d*l)/w;
printf(" Load current in 3 phase 3 wire system= %f ampere\n",i2);
printf(" Cross sectional area of 3 phase 3 wire system= %f m^2\n",a2);
vol2=3*a2*l;
printf("Volume of aluminium conductor required in 3 phase 3 wire system = %f meter cube ",vol2);
