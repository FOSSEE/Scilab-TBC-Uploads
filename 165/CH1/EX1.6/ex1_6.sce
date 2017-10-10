//Example 1.6
clc;
d_dev=[];
Xn=[49.7,50.1,50.2,49.6,49.7];    //Given Data
X=mean(Xn);                       //Mean
for i=1:5
    d=Xn(1,i)-X;
    d_dev=[d_dev,d^2];
end
sq_sum=sum(d_dev);
var=sq_sum/4;
//For small no of data(n<30) we use n-1 as the
//denominator so as to obtain a more accurate value
//for Standard deviation
Std_dev=sqrt(var);                //Std deviation
disp(Std_dev,'Standard deviation')