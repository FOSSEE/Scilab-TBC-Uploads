//to find no of rods of desired length

clc;
n=25000;    //no of rods
n1=12500; //length>10mm
n2=2000;    //length>10.25
a=n1-n2;    //10<length<10.25
p=a/n;
t=1.41;    //using p
t1=t*2;
p1=.4975;
b=p1*n;    //9.5<length<10
disp(a+floor(b),'total no of rods');