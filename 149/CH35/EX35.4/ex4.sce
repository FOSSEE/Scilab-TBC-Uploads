clear
clc
n1=900
n2=1600
p1=20/100
p2=18.5/100
disp('p=(n1*p1+n2*p2)/(n1+n2) ')
p=(n1*p1+n2*p2)/(n1+n2)
disp('q=1-p')
q=1-p
disp('e=(p*q*(1/n1+1/n2))^0.5 ')
e=(p*q*((1/n1)+(1/n2)))^0.5
z=(p1-p2)/e
disp('as z<1,the difference between the proportions is not significant.')
