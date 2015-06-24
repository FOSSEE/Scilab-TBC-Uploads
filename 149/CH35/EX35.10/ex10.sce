clc
disp('m1,d1 and n1 denotes mean,deviation and no. of objects in first sample')
m1=67.85
d1=2.56
n1=6400
disp('m2,d2 and n2 denotes mean,deviation and no. of objects in second sample')
m2=68.55
d2=2.52
n2=1600
disp('S.E. of the difference of the mean heights is ')
e=((d1^2/n1)+(d2^2/n2))^0.5
m1-m2
disp('|m1-m2| > 10e,this is highly significant.hence,the data indicates that the sailors are on the average taller than the soldiers.')