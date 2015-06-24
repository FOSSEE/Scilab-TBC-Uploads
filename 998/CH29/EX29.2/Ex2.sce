//Ex:2
clc;
clear;
close;
r_e=6378.14;//in km
h=250;//in km
a=r_e+h;//Radius of space shuttle orbit at 250km altitude in km
u=3.986*10^5;//kepler's const inkm^3/sec^2
t_p=(4*%pi^2*a^3/u)^(1/2);//in sec
printf("Time period ofthe orbit=%f sec",t_p);
printf("\nThe shuttle will slow down due to friction with earth atmosphere. Thus , the spacecraft will be in stable if its orbit period is more than 5370.30 sec");