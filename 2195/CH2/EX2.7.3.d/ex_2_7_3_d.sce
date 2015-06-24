//Example 2.7.3.d: Probable error
clc;
clear;
close;
//given data :
n=10;
X1=147.2;// in nF
X2=147.4;// in nF
X3=147.9;// in nF
X4=148.1;// in nF
X5=148.1;// in nF
X6=147.5;// in nF
X7=147.6;// in nF
X8=147.4;// in nF
X9=147.6;// in nF
X10=147.5;// in nF
AM=(X1+X2+X3+X4+X5+X6+X7+X8+X9+X10)/n;
d1=X1-AM;
d2=X2-AM;
d3=X3-AM;
d4=X4-AM;
d5=X5-AM;
d6=X6-AM;
d7=X7-AM;
d8=X8-AM;
d9=X9-AM;
d10=X10-AM;
sigma=sqrt((d1^2+d2^2+d3^2+d4^2+d5^2+d6^2+d7^2+d8^2+d9^2+d10^2)/(n-1));
Pe1=0.6745*sigma;// probable error of one reading
probable_error=Pe1/sqrt(n-1);
disp(Pe1,"probable error of one reading(nF) = ")
disp(probable_error,"probable error of mean(nF) = ")
