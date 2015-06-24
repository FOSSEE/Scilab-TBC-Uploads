clear;
//clc();
dad=4;
dae1=4.3;
dbd=3.5;
dbe=3.8;
dcd=2;
dce=2.3;

dm=(dad*dae1*dbd*dbe*dcd*dce)^(1/6);

daa=0.7788*3/100;
dbb=daa;
dcc=daa;

dab=0.5;
dbc=dab;
dca=dab;
dba=dab;

dbc=1.5;
dcb=dbc;
dca=2;
dac=dca;

dsa=(daa*dab*dac*dba*dbb*dbc*dca*dcb*dcc)^(1/9);

la=2*log([dm/dsa]);

ddd=0.7788*4/100;
dee=ddd;
dde=0.3;
ded=dde;

dsb=(ddd*dde*dee*ded)^(1/4);

lb=2*log([dm/dsb]);

l=100*(la+lb);
printf("the loop inductance is: %.3f mH\n",l/10000);

