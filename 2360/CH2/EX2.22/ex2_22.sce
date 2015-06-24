// Exa 2.22
format('v',7);clc;clear;close;
// Given data
x= [41.7 42.0 41.8 42.0 42.1 41.9 42.0 41.9 42.5 41.8];// measured value
n = 10;// number of reading
sigma_x= 0;// initialization of variable
for i=1:1:n
    sigma_x= sigma_x+x(i);// sum of reading
end
x_bar=sigma_x/n;// mean
disp(x_bar,"The mean is");
sigma_d_sq=0;
for i=1:1:n
    d(i)=x(i)-x_bar
    sigma_d_sq= sigma_d_sq+d(i)*d(i);
end
sigma = sqrt( sigma_d_sq/(n-1) );//standard deviation in V
disp(sigma,"The standard deviation in V is");
ProError= 0.6745*sigma;//probable error of one reading in V
disp(ProError,"The probable error of one reading in V is : ")
ProError = 0.6745*sigma;// in V
e_m = ProError/( sqrt(n-1) );// probable error of mean
disp(e_m,"The probable error of mean is : ");
sorted_x= gsort(x);
Range= sorted_x(1)-sorted_x(n);// range
disp("Range = "+string(sorted_x(n))+" to "+string(sorted_x(1))+" = "+string(Range))
