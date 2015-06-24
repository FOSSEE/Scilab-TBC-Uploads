//Example 3.4.3 page 3.44

clc;
clear;

NA= 0.20;
Bo= 150;
rs= 35*10^-6;
Pled = %pi^2*rs^2*Bo*NA^2;
Pled=Pled*10^10; //convertin in uW for displaying...
printf("The optical power coupled is %.2f uW",Pled);
