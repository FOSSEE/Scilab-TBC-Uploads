//Example 6.13
clc;
clear;
close;
format('v',7);
//Given data :
g=9.81;//constant
Cd=0.6;//Coefficient of discharge
B=1.6;//meter
H1=1500/1000;//meter
H2=(1500+1250)/1000;//meter
Q=2/3*Cd*B*sqrt(2*g)*(H2^(3/2)-H1^(3/2));//m^3/sec or cumec
disp(Q,"Discharge through the opening in cumec : ");
//For small opening
H=1.5+1.25/2;//meter
D=1.25;//meter
Qdash=Cd*(B*D)*sqrt(2*g*H);//cumec
Error=(Qdash-Q)/Q*100;//%
disp(Error,"% of error : ");
//Answer is wrong in the book.
