//Chapter 17
//Example 17_6
//Page 408

clear;clc;

kva1=3000;
kva2=4500;
x1=7;
x2=8;
rc=150*1e6/1000;
kvatr=7500;
xt=7.5;
bv=3300;

base=7500;
printf("Let base kVA be 7500 kVA \n");
per_x1=x1*base/kva1;
per_x2=x2*base/kva2;
per_xt=xt*base/kvatr;

r_ab=per_x1*per_x2/(per_x1+per_x2);
c=base*100/r_ab/rc;
per_x=abs((c*(r_ab+per_xt)-per_xt)/(c-1));
x=per_x*10*(bv/1000)^2/base;

printf("%% reactance of generator A = %.2f %% \n\n", per_x1);
printf("%% reactance of generator B = %.2f %% \n\n", per_x2);
printf("%% reactance of transformer = %.2f %% \n\n", per_xt);
printf("%% reactance of the bus bar = %.2f %% \n\n", per_x);
printf("%% reactance in ohms = %.3f ohms \n\n", x);



