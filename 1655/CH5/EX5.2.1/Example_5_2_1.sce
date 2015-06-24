// Example 5.2.1  page 5.2

clc;
clear;

n1=1.47;        //refractive index of fiber
n=1;        //refractive index of air

r=((n1-n)/(n1+n))^2;    //computing fraction of light reflected
loss=-10*log10(1-r);    //loss
total_loss=2*loss;
printf("r = %.3f, which means %.1f percent of the transimitted light is reflected at one interface",r,r*100);
printf("\nTotal loss is %.3f dB",total_loss);

//answer in the book for total loss of fiber is 0.318 dB, deviation of 0.002
