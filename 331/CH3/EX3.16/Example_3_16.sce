//Caption: Standard Deviation for grouped data
//Example3.16
//Page58
clear;
clc;
X = [50,60;60,70;70,80;80,90;90,100];//Share price in rupees
f = [20,30,45,55,50]; //No. of sessions
[m,n] = size(X);
cum_f = 0;
for i = 1:m
    Xi(i)= sum(X(i,:))/2; //Mid-point value
    cum_f = cum_f+f(i);
end
mid = (length(Xi)+1)/2;
A = Xi(mid); //assumed mean
C = diff(X(1,:)); //width of the class interval
N = cum_f; //total frequency
for i = 1:m
    d(i) = (Xi(i)-A)/C;
    fd(i)= f(i)*d(i);
    fd2(i) = f(i)*(d(i)^2);
end
Sigma = sqrt((sum(fd2)/N)-((sum(fd)/N)^2))*C; //Standard deviation
Xmean = A+(sum(fd)*C/N); //Mean value
disp(Sigma,'Standard Deviation Std=');
disp(Xmean,'Mean of the Share price Xmean=');
//Result
//Standard Deviation Std=   
// 
//    12.823319  
// 
// Mean of the Share price Xmean=   
// 
//    79.25  