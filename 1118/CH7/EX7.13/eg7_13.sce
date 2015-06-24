clear;
//clc();
//values as calculated in eg7.7.sce
d=6;
s=0.3;
r=12.5/1000;

dsc=sqrt(r*s);

dm=7.56;
cn=1/(18*(10^(9))*(log([dm/dsc])));
printf("\n the capacitance per km is: %.2f F/km\n",cn*10^(12));

xcb=1/(2*(%pi)*50*cn*1000);
printf("\n the reactance is: %.2f Ohm\n",xcb*.00001);

ds1=sqrt(2)*r;
dm1=7.56;

c1=1000/(18*(10^9)*(log([dm1/ds1])));
printf("\n the capacitance is: %.2f F/km\n",c1*10^(9));

xc1=1/(2*(%pi)*50*c1);
printf("\n the reactance is: %.2f Ohm\n",xc1);

cb=13.721*(10^(-9));
pu_cap=(cb-c1)/c1;
printf("\n the per unit capacitance is: %.3f\n",pu_cap);
