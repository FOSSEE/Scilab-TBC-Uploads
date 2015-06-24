clear
clc
p1=0.3
p2=0.25
disp('q1=1-p1')
q1=1-p1
disp('q2=1-p2')
q2=1-p2
n1=1200
n2=900
disp('e=((p1*q1/n1)+(p2*q2/n2))^0.5 ')
e=((p1*q1/n1)+(p2*q2/n2))^0.5
z=(p1-p2)/e
disp('hence,it is likely that real difference will be hidden.')