clear
clc
vo=1;
t1=1/6;
t2=1;
t3=11/6;
w=1/10;
//Ratio of areas of the first 2 peaks
A2_by_A1=0.5;
R=A2_by_A1/(1-A2_by_A1);
//From the location of 1st peak
V1=(R+1)*vo*t1;
//From the time between peaks
V2=(R*vo)*((t2-t1)-(t1));
//From fig 14.3
N=1+(2*(t1/w))^2;
printf("\n The reflux ratio is %f",R)
printf("\n The volume of 1st tank is %f", V1)
printf("\n The volume of 2nd tank is %f",V2)
printf("\n The number of tanks are %f ",N)