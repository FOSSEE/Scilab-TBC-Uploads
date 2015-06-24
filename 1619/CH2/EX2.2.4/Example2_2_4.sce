//Example 2.2.4 page 2.6

clc;
clear;
z=12;   //fibre length
alpha = 1.5;
p0= 0.3;
pz= p0/10^(alpha*z/10);
pz=pz*1000;  //formatting pz in nano watts...
printf("The power at the output of the cable is:%.2fx10^-9 W",pz);
alpha_new= 2.5;
pz=pz/1000; //pz in uWatts...
p0_new= 10^(alpha_new*z/10)*pz;
printf("\n\nThe Input power is %.2f uW",p0_new);
