//Exa 12.3
clc;
clear;
close;
//given data :
D=30000;//in units/year
Cc=2;//in Rs./unit/year
Co=100;//in Rs./orde
Cs=12;//in units/year
EOQ=sqrt(2*Co*D*(Cs+Cc)/(Cc*Cs));//in units
Q=round(EOQ);//units
disp(Q,"Ordering quantity in units : ");
Q1=sqrt(2*Co*D*Cs/(Cc*(Cs+Cc)));//in units
disp(round(Q1),"Maximum Inventory in units : ");
disp(round(Q-Q1),"Maximum shortage quantity in units : ");
t=Q/D;//in year
t=t*365;//in days
disp(round(t),"Cycle time in days: ");
t1=Q1/D;//in year
t1=t1*365;//in days
disp(round(t1),"Inventory period(t1) in days : ");
t2=t-t1;//in days
disp(round(t2),"Shortage period(t2) in days : ");
disp(D/Q,"No. of Orders/year : ");