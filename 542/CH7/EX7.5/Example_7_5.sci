clear;
clc;
printf("\n Example 7.5");
V1 = 0.00025;               //V is in m^3
t = 300;                    //t is in secs
a = [7.14*10^(-6) 2.86*10^(-4);11.42*10^(-6) 2.86*10^(-4)];
b = [1.2*10^(6);1*10^(6)];
x = inv(a)*b;

//for the plate and frame filter
B1 = x(1)/(2*2.2^2*413*10^3);
B2 = x(2)/(2.2*413*1000);

printf("\nrμv = %d\n",x(1));
printf("\n rμl = %d",x(2));
printf("\n B1= %f    B2= %f",B1,B2);
printf("\n the filtration time for maximum throughput is:");
t1 = 21.6*10^3;
t0= t1 +B2*(t1/B1)^(0.5);
printf("\n t = %f secs",t0);
V = (t1/B1)^(0.5);
printf("\n V= %f m^3",V);
printf("\nMean rate of filtration is: %.2f *10^-6 m^3/s",(V/(t1+t0))/10^-6);