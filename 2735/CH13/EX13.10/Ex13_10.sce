clc
clear
//Initialization of variables
M1=0.5
M2=1
A1=0.5 //ft^2
A2=1 //ft^2
p1=14.7 //psia
p2=14.7 //psia
k=1.4
//calculations
thru=p2*144*A2*(1+k*M2^2)-p1*144*A1*(1+k*M1^2)
net=thru-p1*144*(A2-A1)
//results
printf("Internal thrust = %d lbf",thru)
printf("\n Net thrust = %d lbf",net)
disp("The answers are a bit different due to rounding off error in textbook")
