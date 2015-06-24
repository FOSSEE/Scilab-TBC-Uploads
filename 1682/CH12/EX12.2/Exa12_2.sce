//Exa 12.2
clc;
clear;
close;
//given data :
r=12000;//in units/year
k=24000;//in units/year
Co=175;//in Rs./setup
Cc=15;//in Rs./unit/year
EOQ=sqrt((2*Co*r)/(Cc*(1-r/k)));//in units
Q=ceil(EOQ);//units
disp(Q,"Economic order quantity in units : ");
t1=Q/k;//in year
t1=t1*12*30;//in days
t2=(Q/r)*(1-r/k);//in year
t2=t2*12*30;//in days
disp(round(t1+t2),"Cycle time in days :");
disp(r/Q,"No. of setups/year : ");