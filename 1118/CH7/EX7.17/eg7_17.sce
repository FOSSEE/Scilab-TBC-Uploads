clear;
clc();
dad=6;
dbe=dad;
dae1=sqrt(4*4 + 6*6);
dbd=dae1;
dce=dae1;

ded=sqrt(8*8 + 6*6);
dcd=ded;
dm=(dad*dae1*dbd*dbe*dcd*dce)^(1/6);

dbc=4;
dcb=dbc;
daa=0.7788*20/1000;
dbb=daa;
dcc=daa;

dab=4;
dbc=dab;
dba=dab;

dca=8;
dac=dca;

dsa=(daa*dab*dac*dba*dbb*dbc*dca*dcb*dcc)^(1/9);

la=2*10^(-7)*log([dm/dsa]);

ddd=0.7788*40/1000;
dee=ddd;
dde=4;
ded=dde;

dsb=(ddd*dde*dee*ded)^(1/4);

lb=2*10^(-7)*log([dm/dsb]);

l=100*(la+lb)/1000000;
printf("the inductance per unit length is: %.8f uH/m\n",l*10^(5));

