//Initilization of variables
A=80 //lb
B=40 //lb
C=60 //lb
l1=2 //in
l2=4 //in
l3=6 //in
l4=9 //in
l5=3 //in
l6=7 //in
//Calculations
P=-(-A*l1+B*l2-C*l2)/l1
By=-(A*l3+P*l3)/l4
Ay=(-A*l5-P*l5)/l4
Bz=-(-C*l1-B*l1)/l4
Az=(C*l6+B*l6)/l4
//Result
clc
printf('The forces are Ay=%flb By=%flb Az=%flb Bz=%flb',Ay,By,Az,Bz)
