//Caption: Weighted Arithmetic mean of ungrouped data
//Example3.4
//page43
clear;
clc;
X = input('Enter the demand in units =');
w = input('Corresponding Weights=');
n = length(X);
num =0;
den =0;
for i = 1:n
    num = num+w(i)*X(i);
    den = den+w(i);
end
Xw = num/den;
disp(Xw,'The Estimated demand for the Year 2003 is  Xw=');
//Result
//Enter the demand in units = [400,500,450]
//Corresponding Weights= [1,2,3]
//The Estimated demand for the Year 2003 is  Xw=  458.33333  