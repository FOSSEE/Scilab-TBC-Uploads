
clear ;
clc;

printf("\t Example 10.2\n");
T1=373;        //temp. of shield,K   
T2=1473;        //temp of heater,K
h=0.2 ;       //height of disc heater,m
r1=0.05;      //smaller radius of heater,m
r2=0.1;        //larger radius of heater,m 
R1=r1/h ;       //factors necessary for finding view factor
R2=r2/h ;       //factors necessary for finding view factor
X=1+(1+R2^2)/R1^2;    //factors necessary for finding view factor

Fht=0.5*(X-(X^2-4*(R2^2/R1^2))^0.5);        //view factor
Fhs=1-Fht;    //view factor of heater  occupied by shield
Qnhs=%pi*r2^2*Fhs*5.67*10^-8*(T2^4-T1^4)/4+1;

printf("\t net heat transfer from the heater to shield is : %.0f W\n",Qnhs);
//end