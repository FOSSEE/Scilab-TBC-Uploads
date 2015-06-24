//Chapter 3
//Example 3_14
//Page 56

clear;clc;

p=[260 200 160 100];
t=[6 8 4 6];
sets=4;
p_set=75;
cv=10000;
heat=2860;

//load factor
n=4;
upd=0;
for i=1:n
 upd=(upd+(p(i)*t(i)));
end;

dlf=upd/max(p)/24;
printf("(i)\t Daily load factor=%.2f %% \n\n", dlf*100);

//average demand per day
adpd=upd/24;
printf("(ii)\t Average demand per day=%.0f kW \n\n", adpd*1000);
sc=p_set*1000*sets;
pcf=adpd/sc*1000;
printf("\t Plant capacity factor =%.2f %% \n\n", pcf*100);

//fuel per day
hpd=heat*upd;
fpd=hpd/cv;
printf("(iii)\tFuel required per day = %.1f tons \n\n", fpd);


