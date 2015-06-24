//Chapter 3
//Example 3_7
//Page 51

clear;
clc;

md1=1500;
d1=1.2;
df1=0.8;
md2=2000;
d2=1.1;
df2=0.9;
md3=10000;
d3=1.25;
df3=1;
odf=1.35;

//Maximum demand and connected load
sum_md=md1+md2+md3;
printf("Maximum demand on supply system = %.1f kW \n\n", sum_md/odf);
sum_domestic = md1*d1;
printf("Connected domestic load = %.1f kW \n\n", sum_domestic/df1);
sum_commercial = md2*d2;
printf("Connected commercial load = %.1f kW \n\n", sum_commercial/df2);
sum_industrial =md3*d3;
printf("Connected industrial load = %.1f kW \n\n", sum_industrial/df3);
