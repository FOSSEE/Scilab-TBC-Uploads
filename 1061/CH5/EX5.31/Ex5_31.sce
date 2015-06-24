//Ex:5.31
clc;
clear;
close;
y=1.30*10^-6;// operating wavelength in m
dn1=10^-6;
dn2=10^-5;
db1=(dn1*2*3.14)/y;// in per m
db2=(dn2*2*3.14)/y;// in per m
Lp1=(2*3.14)/(db1);// beat length in m
Lp2=(2*3.14)/(db2);// beat length in m
printf("The max core radius =%f um", db1);
printf("\n The max core radius =%f um", db2);
printf("\n The beat length =%f m", Lp1);
printf("\n The beat length =%f cm", Lp2*100);
printf("\n Hence, range of beat length; 13cm-1.3m");