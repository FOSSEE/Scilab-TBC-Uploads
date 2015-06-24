// Exa 2.20
format('v',7);clc;clear;close;
// Given data
x=[101.2 101.4 101.7 101.3 101.3 101.2 101.0 101.3 101.5 101.1];// measured value
n = 10;// number of reading
sigma_x= 0;// initialization of variable
for i=1:1:n
    sigma_x= sigma_x+x(i);// sum of readings
end
x_bar=sigma_x/n;// mean value
disp(x_bar,"The arithmatic mean is");
sigma_d_sq=0;// initialization of variable
sigma_d=0;// initialization of variable
for i=1:1:n
    d(i)=x(i)-x_bar
    sigma_d= sigma_d+abs(d(i));
    sigma_d_sq= sigma_d_sq+d(i)*d(i);
end
DevFrommean =sigma_d/n;// Deviation from mean 
disp(DevFrommean,"The Deviation from mean is");
sigma = sqrt( sigma_d_sq/(n-1) );//standard deviation  in V
disp(sigma,"The standard deviation in V is");
ProError= 0.6745*sigma;//probable error of one reading  in V
disp(ProError,"The probable error of one reading in V is : ")
ProError = 0.6745*sigma;// in V
e_m = ProError/( sqrt(n-1) );// probable error of mean 
disp(e_m,"The probable error of mean is : ");
