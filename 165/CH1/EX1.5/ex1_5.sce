//Example 1.5
clc;
d_dev=[];
Xn=[49.7,50.1,50.2,49.6,49.7];    //Given Data
X=mean(Xn);                       //Mean
for i=1:5
    d=Xn(1,i)-X;
    d_dev=[d_dev,abs(d)];
end
Davg=mean(d_dev);
disp(Davg,'Average deviation')