//Example 3.3.5 page 3.33

clc;
clear;
n= 3.6;
BETA= 21*10^-3;
alpha= 10;
L= 250*10^-4;

r= (n-1)^2/(n+1)^2;
Jth= 1/BETA *( alpha + (log(1/r)/L));
Jth=Jth/1000; //converting for displaying...
printf("The threshold current density is %.2fx10^3",Jth);
Jth=Jth*1000;
Ith  =Jth*250*100*10^-8;
Ith=Ith*1000; //converting into mA...
printf("\n\nThe threshold current is %.1f mA",Ith);
