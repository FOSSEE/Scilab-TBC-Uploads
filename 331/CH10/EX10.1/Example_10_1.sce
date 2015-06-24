//Caption:Correlation Analysis
//Correlation Coefficient for Ungrouped Data (karl Pearson's Coefficient of Correlation)
//The combination of hypotheses too test the significance of 'r' is as shown below:
//Ho: r =0 (The two variables are not associated)
//H1: r # 0 (The two variables are associated)
//Example10.1
//Page368
clear;
clc;
X = [10,12,14,16,18,20,22,24,26,28];//Annual Advertising expenditure
Y = [20,30,37,50,56,78,89,100,120,110];//Annual sales
n = length(X);
Xmean = mean(X);
Ymean = mean(Y);
disp(Xmean,'Mean of X=')
disp(Ymean,'Mean of Y=')
//correlation coefficient using basic formula
r=0;
num=0;
den1=0;
den2=0;
for i = 1:n
    num=num+((X(i)-Xmean)*(Y(i)-Ymean))
    den1 = den1+(X(i)-Xmean)^2;
    den2 = den2+(Y(i)-Ymean)^2;
end
r = num/(sqrt(den1)*sqrt(den2));
disp(r,'The correlaion coefficient between annual advertising expenditure and annual sales revenue r =')
//correlation coefficient using Pearson's product moment formula
sumxi = sum(X);
sumyi = sum(Y);
xiyi = X.*Y;
sumxiyi = sum(xiyi);
sumxi2 = sum(X.^2);
sumyi2 = sum(Y.^2);
r = (n*sumxiyi-sumxi*sumyi)/(sqrt(n*sumxi2-sumxi^2)*sqrt(n*sumyi2-sumyi^2));
disp(r,'The correlation coefficient using Pearsons product moment formula r=')
t = r/sqrt((1-r^2)/(n-2));
disp(t,'The calculated t statistic to test the significance of r t=')
alpha = 0.05;
alpha = alpha/2;
t_stand = 2.306;
disp(t_stand,'The table t value at half of the significance level and 8 degrees of freedom=')
if (t<t_stand) then
    disp('Since the calculated t statistic is less than table t value, accept Null hypothesis')
else
    disp('Since the calculated t statistic is greater than table t value, reject Null hypothesis')
end
//Result
//Mean of X=   
// 
//    19.  
// 
// Mean of Y=   
// 
//    69.  
// 
// The correlaion coefficient between annual advertising expenditure and annual sales revenue r =   
// 
//    0.9851764  
// 
// The correlation coefficient using Pearsons product moment formula r=   
// 
//    0.9851764  
// 
// The calculated t statistic to test the significance of r t=   
// 
//    16.243604  
// 
// The table t value at half of the significance level and 8 degrees of freedom=   
// 
//    2.306  
// 
// Since the calculated t statistic is greater than table t value, reject Null hypothesis   
 