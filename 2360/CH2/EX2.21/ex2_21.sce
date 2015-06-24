// Exa 2.21
format('v',7);clc;clear;close;
// Given data
x= [29.6 32.4 39.4 28.9 30.0 33.3 31.4 29.5 30.5 31.7 33.0 29.2];// measured value
n = 12;// number of reading
sigma_x= 0;// initialization of variable
for i=1:1:n
    sigma_x= sigma_x+x(i);// sum of readings
end
x_bar=sigma_x/n;// mean value 
disp(x_bar,"The mean value is");
sorted_x= gsort(x);
x_median= (sorted_x(n/2)+sorted_x(n/2+1))/2;// median value
disp(x_median,"The median value is : ")
sigma_d_sq=0;
for i=1:1:n
    d(i)=x(i)-x_bar
    sigma_d_sq= sigma_d_sq+d(i)*d(i);
end
sigma = sqrt( sigma_d_sq/(n-1) );//standard deviation in V
disp(sigma,"The standard deviation in V is");

