//exa 2.11
clc;clear;close;
format('v',7);
//C1=561+7.92*P1+0.001562*P1^2;//Rs./hour
//C2=310+7.85*P2+0.00194*P2^2;//Rs./hour
a1=561;a2=310;
b1=7.92;b2=7.85;
c1=0.001562;c2=0.00194;
ce=c1*c2/(c1+c2);
be=ce*(b1/c1+b2/c2);
ae=a1-b1^2/4/c1+a2-b2^2/4/c2+be^2/4/ce;
disp("Coefficients are : ");
disp("ae = "+string(ae)+" & be = "+string(be));
format('v',10);
disp(ce,"ce = ")
PT=poly(0,'PT');
disp("Cost Characteristics : ")
disp("CT=870.753+7.8888*PT+0.0008653*PT^2");
