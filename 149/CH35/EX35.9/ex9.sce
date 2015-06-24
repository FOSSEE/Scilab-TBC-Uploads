clc
disp('m1 and n1 represents mean and no. of objects in sample 1')
disp('m2 and n2 represents mean and no. of objects in sample 2')
m1=67.5
m2=68
n1=1000
n2=2000
d=2.5
disp('on the hypothesis that the samples are drawn from the same population of d=2.5,we get ')
z=(m1-m2)/(d*((1/n1)+(1/n2))^0.5)
disp('since |z|> 1.96,thus samples cannot be regarded as drawn from the same population ')