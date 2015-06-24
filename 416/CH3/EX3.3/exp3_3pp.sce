clear
clc
disp("example 3.3")
cost=2*10^8
sal=0.15
use=25
t=(1-(sal^(1/use)))
printf("rate of depretion by fixed percentage method =%fpersent",t*100)
rd=cost*(1-t)^10
printf("\nremaining depreciation at the end of 10th year =Rs.%f=Rs.%fx10^8",rd,rd/(10^8))
printf("\naccumulated depreciation at the end of 10 year is Rs.%f =Rs.%fx10^8",cost-rd,(cost-rd)/10^8)