//Exa 10.2
clc;
clear;
close;
//Given data
Ic=80000000;//in Rs.
Aps=6000000;//in Rs.
Afs=3000000;//in Rs.
Aib=5000000;//in Rs.
Arb=2000000;//in Rs.
Amc=3000000;//in Rs.
i=12;//in % per annum
n=50;//in years
TAB=Afs+Aib+Arb;//in Rs.
//Present worth of Benefit:
//Formula : (P/A,i,n)=(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW_B=TAB*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in Rs
disp(PW_B,"Total present worth of benefits in RS. : ");

//Present worth of costs:
//Formula : (P/A,i,n) : (((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)
PW_C=Ic+Amc*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n)-Aps*(((1+i/100)^n)-1)/((i/100)*(1+i/100)^n);//in RS
disp(PW_C,"Present worth of costs in Rs. : ");
BCratio=PW_B/PW_C;//unitless
disp(BCratio,"BCratio : ");
disp("Since BC ratio is more than 1, the state govt. can implement the hydroelectric project.");