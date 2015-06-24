//Example 16.1
//Forging in Plain Strain
//Page No. 574
clc;clear;close;

sigma=1000;               //in psi
mu=0.25;                  //no unit
a=2;                      //in inches
b=6;                      //in inches
h=0.25;                      //in inches
x=0;                      //in inches
p_max=2*sigma*exp(2*mu*(a-x)/h)/sqrt(3);
printf('\nAt the centerline of the slab = %g psi\n',p_max);
printf('\nPressure Distributon from the centerline:');
printf('\n---------------------------------\n');
printf('x\tp (ksi)\t\tt_i (ksi)\n');
printf('---------------------------------\n');
for x=0:h:a
    p=2*sigma*exp(2*mu*(a-x)/h)/(1000*sqrt(3));             //in ksi
    t_i=mu*p;
    printf('%g\t%g\t\t%g\n',x,p,t_i);
end
printf('---------------------------------\n');
k=sigma/sqrt(3);
x=0;                      //in inches
p_max1=2*sigma*((a-x)/h+1)/sqrt(3);
printf('\nFor sticking friction:\np_max = %g ksi',p_max1/1000);
x1=a-h/(2*mu)*log(1/(2*mu));
p=2*sigma*(a/(2*h)+1)/sqrt(3);
P=2*p*a*b;
P=P*0.000453;                      //conversion to metric tons
printf('\n\nThe Forging load = %g tons',P);
