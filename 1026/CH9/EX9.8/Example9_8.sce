//chapter9,Example9_8,pg 239

//from bragg's law

//2*d*sin(theta)=n*lam

n=1

theta1=5.4*(%pi/180)

theta2=7.6*(%pi/180)

theta3=9.4*(%pi/180)

lam = 2

d100=lam/2*sin(theta1)

d110=lam/2*sin(theta2)

d111=lam/2*sin(theta3)

printf("ratio of interplannar spacing \n(1/d100):(1/d110):(1/d111)=")

printf("%.2f:",sin(theta1));printf("%.2f:",sin(theta2));printf("%.2f",sin(theta3));

printf("\nas ratio (1/d100):(1/d110):(1/d111)=1:sqrt(2):sqrt(3)this relation is valid for simple cubic crystal therefore, this is a SCC crystal")