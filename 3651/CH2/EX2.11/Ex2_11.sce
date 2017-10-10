
clc



//Variable declaration
lamda=0.842
n1=1
q=(8+(35/60))*(%pi/180)
n2=3
d=1
//Calculations
//n*lamda=2*d*sin(theta)
//n1*0.842=2*d*sin(q)
//n3*0.842=2*d*sin(theta3)
//Dividing both the eauations, we get
//(n2*lamda)/(n1*lamda)=2*d*sin(theta3)/2*d*sin(q)
theta3=asin((((n2*lamda)/(n1*lamda))*(2*d*sin(q)))/(2*d))
d=theta3*180/%pi;
a_d=int(d);
a_m=(d-int(d))*60

//Result
printf('sin(theta3) =%0.3f %0.3f',a_d,a_m)
