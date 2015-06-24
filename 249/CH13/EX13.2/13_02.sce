clear
clc
//length of column(mm)
l=1219;
//Velocity(mm/s)
u=0.0067;
//Using the probability graph
//16th percentile point fall at
t1=178550;
//84th percentile point fall at
t2=187750;
//standard deviation
sigma=(t2-t1)/2;
t=l/u;
sigma_theta=sigma/t;
//Vessel dispersion number
d=sigma_theta^2/2;
printf("\n The vessel dispersion number is %f",d)