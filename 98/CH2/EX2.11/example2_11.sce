//Chapter 2
//Example 2_11
//PAge 25

clear;clc;

h=25;
power=400;
vol=[10 6 1.5];
months=[4 2 6];
n_overall=0.8;

//standby capacity
pd1=vol(1)*1e3*9.81*n_overall*h/1000
pd2=pd1*vol(2)/vol(1)
pd3=pd1*vol(3)/vol(1)
cap=power-pd3
printf("(i)\t Capacity of standby unit = %.1f kW \n\n", cap);

//excess power
discharge = vol.*months
avg_dis=sum(discharge)/12
pd=avg_dis*pd1/vol(1)
ep=pd-power
printf("(ii)\t Excess power available = %.1f kW \n\n", ep);
