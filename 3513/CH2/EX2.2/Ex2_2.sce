// To determine percentage of specimens
//page no 22
clear
clc;
m=118.5;// volts mean
sd=1.2;// volts psi
p1=0.0188;//The probability from tables
p1=p1*100;
x=116;
z=x-(m/sd);
p2=0.8944;//The probability from tables
p2=p2*100;
p=p2-p1;
mprintf("Therefore the percentage of specimen falling between 116 and 120 volts = %.2f percentage",p);
//(b)
p=1.2; //The probability from tables
x=115;
z=1.404;
m=115+z;
av=m-z
mprintf("\nThe adjustment is 116.404 – 115 = %.2f Voltage",av);
