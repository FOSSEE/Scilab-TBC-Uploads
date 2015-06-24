clear;
clc;
//Example 14.2
R2=10000;
Ri=10000;
Aol=10^5;
Rif=1/(1/Ri+(1+Aol)/R2);
printf('\nclosed loop input resistance =%.2fOhm\n',Rif)
