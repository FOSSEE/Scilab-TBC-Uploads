//Ex:8.4
clc;
clear;
close;
n=3.6;// core refractive index
NA=0.15;// numerical aperture
nc=NA^2;// coupling efficiency
l_s=-10*log(nc)/log(10);// loss in db
pe_pi=0.023*0.0013;// from ex 8.3
pc=-10*log(pe_pi)/log(10);// loss in decibels relative to Pint
printf("The coupling efficiency =%f %%", nc*100);
printf("\n The loss =%f db", l_s);
printf("\n The loss in decibels relative to Pint=%f db", pc);