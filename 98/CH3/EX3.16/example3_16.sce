//Chapter 3
//Example 3_16
//Page 57

clear;clc;

const=4;
maxl=20;
tg1=10;
tg2=10;
tg3=5;

ic=tg1+tg2+tg3;
ad=0.5*(maxl+const);
pf=ad/ic;
ugpa=ad*1000*8760;
lf=ad/maxl*100;
uf=maxl/ic;

printf("Installed capacity = %.0f MW \n\n", ic);
printf("Average demand = %.0f MW \n\n", ad);
printf("Plant factor = %.2f %% \n\n", pf*100);
printf("Units generated per annum = %.2f*10^6 kWh \n\n", ugpa*1e-6);
printf("Load factor = %.2f %% \n\n", lf);
printf("Utilisation factor = %.2f %% \n\n", uf*100);



