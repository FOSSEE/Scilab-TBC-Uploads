//Exa 12.4
clc;
clear;
close;
//given data :
r=12000;//in units/year
k=2000*12;//in units/year
Co=400;//in Rs./setup
Cc=0.20*12;//in Rs./year
Cs=15;//in Rs./unit/year

EOQ=sqrt((2*Co*k*r*(Cc+Cs)/(Cc*(k-r)*Cs)));//in units
Q=round(EOQ);//units
disp(Q,"Ordering quantity in units : ");

Q1=sqrt(2*Co*Cc*r*(k-r)/(Cs*(Cc+Cs)*k));//in units
disp(round(Q1),"Maximum Inventory in units : ");
Q2=(Q*(k-r)/k)-Q1;//in Units
disp(round(Q2),"Maximum shortage quantity in units : ");
t=Q/r;//in year
t=t*365;//in days
disp(round(t),"Cycle time in days: ");
t1=(Q2/r)*365;//in days
t2=(Q2/(k-r))*365;//in days
t3=(Q1/(k-r))*365;//in days
t4=(Q1/r)*365;//in days
disp(round(t1),"Period of shortage in days : ");
disp(round(t2),"Period of production satisfying back order in days : ");
disp(ceil(t3),"Period of production satisfying period requirement in days : ");
disp(ceil(t4),"Period of consumption only in days : ");
