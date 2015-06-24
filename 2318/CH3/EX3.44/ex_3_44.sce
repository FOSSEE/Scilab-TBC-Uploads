//Example 3.44:balance current and bridge sensivity
clc;
clear;
close;
P=100;//ohms
Q=1000;//ohms
S=857;//ohms
X=((P/Q)*S);//ohms
E=1.5;//volts
dx=1/X;//
rg=50;//ohms
a1=((rg+(X*(Q+S))/(X+S)));//ohms
dig=((E*S*X*dx)/((X+S)^2*a1));//
D=100;//M-ohm
sb=((dig*D*10^6)/dx);//
disp(dig*10^6,"balance current is ,(micro-A)=")
disp(sb*10^-1,"bridge sensivity is,(cm-(ohm/ohm))=")
//sensivity is calculated wrong in the book
