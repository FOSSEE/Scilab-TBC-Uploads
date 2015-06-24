clear;
//clc();
//taking the values calculated in eg7.2.sce
dm=(3*5*3.6)^(1/3);
dsc=10.5/1000;
vn=132*1000;

cn=2*(%pi)*8.85*10^(-12)/log([dm/dsc]);

xc=1/(2*(%pi)*50*cn);

ic=vn/(xc*sqrt(3));
printf("\n the charging current is:%.3f A/km\n",ic*1000);

va=(vn*vn)/xc;
printf("\n the volt-ampere is:%.2f kVAr\n",va);
