clear;
//clc();
dm=5.4576;
r=7.125/1000;
daa1=6*sqrt(2);
dbb1=9;
dcc1=daa1;

dsc=((r^3)*(daa1*dbb1*dcc1))^(1/6);

cn=1/(18*10^(9)*log([dm/dsc]));
printf("\n the capacitance is: %.2f uF/km\n ",cn*10^(12));

xc=1/(2*(%pi)*50*cn);
printf("\n the reactance is: %.2f Ohm/km\n ",xc*.001);
