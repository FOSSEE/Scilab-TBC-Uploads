//Caption: Shortcut method for Arithmetic Mean of grouped data
//Example 3.3
//Page 41
clc;
x = input('Minimum & Maximum Age of Employees=');
f = input('Number of Employees=');
[m,n] = size(x);
N = sum(f);
C = diff(x(1,:));
A = 38; //Assumed Mean
for i =1:m
    X(i)= sum(x(i,:))/2;
    d(i) = (X(i)-A)/C;
    fd(i) = f(i)*d(i);
end
Xmean = A+((sum(fd)/N)*C);
disp(Xmean,'The Arithmetic Mean of the age of the Employees Xmean=')
//Result
//Minimum & Maximum Age of Employees= [20,24;24,28;28,32;32,36;36,40;40,44;44,48;48,52;52,56;56,60]
//Number of Employees=[40,35,35,25,30,40,50,45,35,30]
//The Arithmetic Mean of the age of the Employees Xmean= 40.246575 