//Example 1.4
clc;
d_dev=[];
Xn=[49.7,50.1,50.2,49.6,49.7];    //Given Data
X=mean(Xn);                       //Mean
disp(X,'Aritmatic Mean')
for i=1:5
    d=Xn(1,i)-X;
    d_dev=[d_dev,d];
end
dtotal=sum(d_dev);
disp(d_dev,'Deviations from each value')
disp(dtotal,'Algebraic sum of deviations')