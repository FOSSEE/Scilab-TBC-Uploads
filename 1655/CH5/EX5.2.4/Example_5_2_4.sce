// Example 5.2.4  page 5.7

clc;
clear;

n1=1.5;        //refractive index of fiber
n=1;        //refractive index of air

r=((n1-n)/(n1+n))^2;    //computing fraction of light reflected
loss=-10*log10(1-r);    //loss
total_loss=2*loss;
printf("r = %.2f, which means %.1f percent of the transimitted light is reflected at one interface",r,r*100);
printf("\nTotal loss is %.2f dB",total_loss);

//answer in the book for total loss of fiber is 0.36 dB, deviation of 0.01
