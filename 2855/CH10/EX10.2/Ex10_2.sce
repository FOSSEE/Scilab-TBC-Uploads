//Chapter 10
//page no 354
//given
clc;
clear ;
Vpi=1;         //Assumed 1 because we can not use a variable on RHS
//Vpi is Violtage swing
disp("for alpha=0.3");
A=0.3;         //chirping
//V1=(AV1p+Vp)/2
V1=(A*Vpi+Vpi)/2;
printf("\n V1= %0.2f Vpi",V1) 
V2=V1-Vpi;
printf("\n V2= %0.2f Vpi\n",V2) 
disp("for alpha=0.8");
A=0.8;         //chirping
//V1=(AV1p+Vp)/2
V1x=(A*Vpi+Vpi)/2;
printf("\n V1= %0.1f Vpi",V1x) 
V2x=V1x-Vpi;
printf("\n V2= %0.1f Vpi",V2x) 
printf("\n Biasing range is %0.2f Vpi &lt;= V1 &lt;= %0.2f Vpi",V1,V1x) 
printf("\n Biasing range is %0.1f Vpi &lt;= V2 &lt;= %0.2f Vpi",V2x,V2)