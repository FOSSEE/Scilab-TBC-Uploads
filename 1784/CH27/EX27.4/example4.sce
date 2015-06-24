//chapter27
//example 4
clc
//given
q1=1.0*10^-6 //in coul
q2=2.0*10^-6 //in coul
l=10 //sepearation b/w q1 and q2 in cm
disp("for the electric field strength to be zero the point should lie between the charges where E1=E2")
//"Refer to the fig 27.9"
//E1=electric fied strength due to q1
//E2=electric fied strength due to q2
disp("E1=E2 which implies q1/4πϵx2 = q2/4πϵ(l-x)2")
x=l/(1+sqrt(q2/q1))
printf("Electric field strength is zero at x=%f cm",x)
