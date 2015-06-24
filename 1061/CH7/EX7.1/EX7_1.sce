//Ex:7.1
clc;
clear;
close;
n1=1.46;// core refractive index
n=1;// refractive index due to air
r=((n1-n)/(n1+n))^2;
r1=0.03;// r take upto two decimal place
l_s=-10*log(1-r1)/log(10);// fiber loss in db
l_t=2*l_s;// total loss in db
printf("The fiber loss =%f db", l_s);
printf("\n there is a similar loss at the other interface");
printf("\n The total fiber loss =%f db", l_t);