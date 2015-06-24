//example 12
//exergy destroyed during stirring of gas
clear
clc
T0=530 //temperature of surrounding air in R
m=2 //mass of air in insulated rigid tank in lbm
cv=0.172 //in Btu/lbm-R
T2=590 //initial temperature of air in R
T1=530 //final temperature of air in R
Xdestroyed=T0*m*cv*log(T2/T1) //exergy destroyed in Btu
Wrevin=m*cv*(T2-T1)-Xdestroyed //minimum work input in Btu
printf("\n Hence, the exergy destroyed is = %.1f Btu. \n",Xdestroyed);
printf("\n Hence, the reversible work for this process  is = %.1f Btu. \n",Wrevin);
