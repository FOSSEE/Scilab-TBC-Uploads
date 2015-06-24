//Example 5_22
clc;
clear;
close;
format('v',5);
//given data : 
V=0.4;//V(Forward voltage)
t1=25;//degree C
t=150;//degree C
T=t+273;//K
T1=t1+273;//K
VT=T/11600;//V
//I0T=I01*2^((T-T1)/10)
I0TBYI0T1=2^((T-T1)/10);//ratio of current
Eta=2;//for Si
I2ByI0T=(exp(V/Eta/VT)-1);//ratio of current
//At 25 degree C
VT1=T1/11600;//V
I1ByI0T1=(exp(V/Eta/VT1)-1);//A///at 25 degree C
I2ByI1=I2ByI0T/I1ByI0T1*I0TBYI0T1;///ratio of I2 & I1
disp(I2ByI1,"Current multiplying factor is ");
//Note : Solution is complete in this code.
//In the textbook, extra lines are given for which data is not given.
