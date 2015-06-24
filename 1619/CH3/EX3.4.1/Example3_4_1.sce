//Example 3.4.1 page .342

clc;
clear;

Bo= 150;
rs= 35*10^-4;
a1= 25*10^-6;
NA= 0.20;
a2= 50*10^-6;

Pled = (a1/rs)^2 * (%pi^2*rs^2*Bo*NA^2);
Pled=Pled*10^10; //converting in uW...
printf("The power coupled inthe fibre is %d uW",Pled);
Pled_new = (%pi^2*rs^2*Bo*NA^2);
Pled_new=Pled_new*10^6; //converting in uW...
printf("\n\nThe Power coupled for case 2 is %.2f uW",Pled_new);
