clc
disp('d and n represents the deviation and no. of objects in given sample')
n=10
d=0.04
m=0.742
M=0.700
disp('taking the hypothesis that the product is not inferior i.e. there is no significant differene between m and M')
t=(m-M)*(n-1)^0.5/d
disp('degrees of freedom=')
f=n-1