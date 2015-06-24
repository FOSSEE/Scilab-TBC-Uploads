clear;
//clc();
sb=5000
x1=2.5;
x2=2.5;
n1=400;
n2=200;
x1e=x1+x2*(n1/n2)^2;

vb1=400;
x1epu=x1e*sb/vb1^2;
printf("\n Total per unit resistnce refered to primary is: %.2f",x1epu);

x2e=x1+x2*(n2/n1)^2;
vb2=200;
x2epu=x2e*sb/vb2^2;
printf("\n Total per unit resistnce refered to secondary is: %.2f",x2epu);

//c)if the primary voltage is used as base

xpu1=x1*sb/vb1^2;
printf(" \n Primary per unit reactance is: %.2f ",xpu1);

xpu2=x1*sb/vb2^2;
printf("\n Seconadary per unit reactnace is: %.2f Ohm",xpu2);
