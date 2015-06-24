//Caption: Measure of Skewness
//Karl Pearson's coefficient of skewness
//Example3.18
//Page61
clear;
clc;
X = [0,4;4,8;8,12;12,16;16,20;20,24;24,28;28,32]; //Absenteeism in days
f = [10,76,100,150,24,36,14,2]; //No. of employees
[m,n] = size(X);
for i = 1:m
    Xi(i) = sum(X(i,:))/2; //Mid point
end
if (modulo(m,2)==1) then  //to check even or odd
    mid = m/2;
else
    mid = (m+1)/2;
end
A = Xi(mid); //assumed mean
N = sum(f); //total frequency
C = diff(X(1,:)); //class interval
for i = 1:m
    d(i) = (Xi(i)-A)/C; 
    fd(i)= f(i)*d(i);
    fd2(i) = f(i)*(d(i)^2);
end
Xmean = A+(sum(fd)*C/N); //Mean value
[m1,n1] = max(f); //maximum frequency
L = X(n1,1); //Lower limit of the modal class
f1 = abs(f(n1)-f(n1-1)); //Abs difference between freq. of modal class & its 
//immediately preceding class
f2 = abs(f(n1)-f(n1+1)); //Abs difference between freq. of modal class & its 
//immediately succeeding class
Mode = L+((f1/(f1+f2))*C);//Mode
Std = sqrt((sum(fd2)/N)-(sum(fd)/N)^2)*C;//standard deviation
CS = (Xmean-Mode)/Std; //coefficient of skewness
disp(Xmean,'Mean Value =')
disp(Mode,'Mode value =')
disp(CS,'coefficient of skewness = ')
//Result
if (CS<0) then
    disp('Since the coefficient of skewness is negative, the distribution is')
    disp('skewed to the left & extent of distortion is very small')
end
//Result
//Mean Value =   
// 
//    12.679612  
// 
// Mode value =   
// 
//    13.136364  
// 
// coefficient of skewness =    
// 
//  - 0.0832508  
// 
// Since the coefficient of skewness is negative, the distribution is   
// 
// skewed to the left & extent of distortion is very small 