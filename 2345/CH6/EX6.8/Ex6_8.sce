//Finding losses
//Example 6.8(pg 215)
clc
clear
m=10//mass in kg
T1=20//total loss in watts
f1=50//frequency in c/s
T2=35//total loss in watts
f2=75//frequency in c/s
//both have same peak flux density
//total loss=hysteresis loss+ Eddy current loss
//all quantities except frequency are constant
//so Total loss=Af+Bf^2
//let c1 and c2 be constants such that total loss=c1*f + c2*f^2
c2=[T2-(T1*f2/f1)]/(f2^2-f1*f2)
c1=(T1-c2*f1^2)/f1
k=c1/c2//hysteresis loss/eddy current loss
H50=T1*k/101//hysteresis loss at 50 c/s
E50=T1-H50//eddy current loss at 50 c/s
printf('Thus hysteresis loss at 50 c/s is %3.1f Watts \n',H50)
printf('And Eddy current loss at 50c/s is %3.1f Watts',E50)
