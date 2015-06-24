//Exa 12.1
clc;
clear;
close;
//given data :
D=24000;//in units/year
Co=150;//in Rs./order
Pprice=75;//Rs./unit
Cpupy=18;//in % of Pprice/unit
Cc=Pprice*Cpupy/100;//in Rs.
EOQ=sqrt((2*Co*D)/Cc);//in units
disp(round(EOQ),"Economic order quantity in units : ");
n=D/round(EOQ);//no. of orders/year
disp(n,"No. of orders/year : ");
T=round(EOQ)/D;// time between successive orders in year
T=T*12;//in months
T=T*30;//in Days
disp(round(T),"Time between successive orders in days : ");