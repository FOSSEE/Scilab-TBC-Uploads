//Caption: Rank Correlation
//Test of Significance of rank correlation coefficient
//Example10.3
//Page375
X = [1,2,3,4,5,6,7,8,9,10];//rating by judge-1
Y = [2,4,5,1,3,6,7,9,10,8];//rating by judge-2
n = length(X);
rs = 0;
for i = 1:n
    rs = rs+(X(i)-Y(i))^2;
end
rs = 1-6*(rs/(n*(n^2-1)));
disp(rs,'The rank correlation coefficient is rs=');
t = rs*sqrt((n-2)/(1-rs^2));
disp(t,'The Calculated t statistic t=')
t_stand = 2.306;
disp(t_stand,'The table t value for 8 degrees of freedom and significance level = 0.025')
if (t<t_stand) then
    disp('Accept Null Hypothesis')
else
    disp('The caculated t statistic is > table t value, reject Null hypothesis')
end
//Result
//The rank correlation coefficient is rs=   
// 
//    0.8303030  
// 
// The Calculated t statistic t=   
// 
//    4.2138888  
// 
// The table t value for 8 degrees of freedom and significance level = 0.025   
// 
//    2.306  
// 
// The caculated t statistic is > table t value, reject Null hypothesis