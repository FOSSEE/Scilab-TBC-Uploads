clear;
//clc();
d=20;
s=0.5;
r=20/1000;
dab=20;
dbc=20;
dca=40;

dsl=((sqrt(2)*0.7788*r*(s*s*s))^(1/4));

dm=(dab*dbc*dca)^(1/3);

lb=2*log([dm/dsl]);

xlb=2*(%pi)*lb*50;

dsc=(sqrt(2)*r*(s^3))^(1/4);

cn=1/(18*(10^(9))*(log([dm/dsc])));
printf("the capacitance is: %.2f*10^(-9) F/km\n",cn*10^(12));

xcb=1/(2*(%pi)*50*cn*1000);
printf(" the reactance is: %.2f*10^(5) Ohm/km\n",xcb*.00001);
