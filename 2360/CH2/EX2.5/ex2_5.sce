// Exa 2.5
format('v',7);clc;clear;close;
// Given data
// Reported values for average petrol consumption
x= [25.5 30.3 31.1 29.6 32.4 39.4 28.9 30.0 33.3 31.4 29.5 30.5 31.7 33.0 29.2];
n = 15;// number of reading
sigma_x=0;// initialization of variable
for i=1:1:15
    sigma_x= sigma_x+x(i);// sum of reading
end
Mean =sigma_x/n;// mean value
disp(Mean,"The mean value is");
sorted_x= gsort(x);
Xmedian = sorted_x((n+1)/2);// median value
disp(Xmedian,"The median value is");
sigma_d_sq=0;
for i=1:1:15
    d(i)=x(i)-Mean
    sigma_d_sq= sigma_d_sq+d(i)*d(i);
end
sigma = round(sqrt( sigma_d_sq/(n-1) ));// standard deviation
disp(sigma,"The standard deviation is");
V = sigma^2;// variance
disp(V,"The variance is");
