//Exa 10.1
clc;
clear;
close;
//Given data
Ii=4000000;//in Rs.
AM=150000;//in Rs.
AFS=600000;//in Rs.
Einc=50000;//in Rs.
i=12;//in % per annum
n=15;//in years
//Total present worth of costs:
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
Cp=AM*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in Rs
TPW=Ii+Cp;//in RS
disp(TPW,"Total present worth of costs in RS. : ");

//Total present worth of fuel savings:
AI=600000;//in Rs.
G=50000;//in Rs.
i=12;//in % per annum
n=15;//in years
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100)
A=AI+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100);//in RS
Bp=A*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in Rs.
disp(Bp,"Present worth of fuel savings in Rs. : ");
BCratio=Bp/(Ii+Cp);//unitless
disp(BCratio,"BCratio : ");
disp("Since BC ratio is more than 1, the construction of the bridge across the river is justified.");