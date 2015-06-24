// Exa 2.6
format('v',7);clc;clear;close;
// Given data
// Value of readings
x=[147.2 147.4 147.9 148.1 147.7 147.5 147.6 147.4 147.6 147.5] 
n = 10;// number of reading
sigma_x=0;// initialization of variable
for i=1:1:n
    sigma_x= sigma_x+x(i);// sum of readings
end
x_bar= sigma_x/n;// mean value 
disp(x_bar,"The arthmatic mean is");
sigma_d_sq=0;
for i=1:1:n
    d(i)=x(i)-x_bar;
    sigma_d_sq= sigma_d_sq+d(i)*d(i);
end
sigma = sqrt( sigma_d_sq/(n-1) );// standard deviation 
disp(sigma,"The standard deviation is");
// probable error of average of the ten reading 
e_m = 0.6745 * ( sigma/(sqrt(n-1)) );
disp(e_m,"The probable error of average of the ten reading is");
