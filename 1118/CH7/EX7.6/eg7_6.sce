clear;
//clc();
r=0.5*3*4.75/1000;
d1=3;
d2=6;
dac1=6;
dbb1=9;
dca1=6;
dac=6;
dc1a1=6;

dab=sqrt(d1*d1 + (d1/2)*(d1/2));
dbc=dab;
da1b1=dab;
db1c1=dab;

dab1=sqrt(d1*d1 + (dac+d1/2)*(dac+d1/2));

dbc1=dab1;
dba1=dab1;
db1c=dab1;
da1b=dab1;

daa1=sqrt(d2*d2 + d2*d2);

dcc1=sqrt(d2*d2 + d2*d2);

mgmd=(dab*dbc*dac*dab1*dbc1*dca1*da1b*db1c*dac1*da1b1*db1c1*dc1a1)^(1/12);
sgmd=(((0.7788*r)^3)*(daa1*dbb1*dcc1))^(1/6);
l=2*log([mgmd/sgmd]);
xl=2*(%pi)*50*l*10^(-5);
printf("\n the inductance  is:  %.4f Ohm/km\n ",xl);
