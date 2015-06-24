clear;
//clc();
d=6;
s=0.3;
r=12.5/1000;
dab=6;
dbc=6;
dca=12;

dsl=sqrt(0.7788*r*s);

dm=(dab*dbc*dca)^(1/3);

lb=2*log([dm/dsl])/10;

xl=2*(%pi)*50*lb;

ds1=0.7788*r*sqrt(2);

l1=2*log([dm/ds1])/10;

xl1=2*(%pi)*50*l1;
printf("\n the line inductance is:  %.3f Ohm/km\n",xl1/1000);

pu_red=(xl1-xl)/xl1;
printf("\n the pu reduction is:  %.3f\n",pu_red);

