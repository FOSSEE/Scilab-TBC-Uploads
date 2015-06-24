//Example 2.30: % Error
clc;
clear;
close;
//given data :
Ra=2;// in ohm
Rsh=0.0004;// constant
alfa=0.004;
t1=288;// in K
t2=333;// in K
I=100;// in A
Rs=50;// in ohm
theta=t2-t1;
Ra1=Ra+(alfa*Ra*theta);
N1=1+(Ra/Rsh);
Ia=I/N1;
N2=1+(Ra1/Rsh);
Ia1=I/N2;
epsilon1=(Ia1-Ia)*100/Ia;
disp(epsilon1,"The percentage error,(%) = ")
N3=1+((Ra+Rs)/Rsh);
Ia2=I*10^3/N3;
N4=1+((Ra1+Rs)/Rsh);
Ia3=I*10^3/N4;
epsilon2=(Ia3-Ia2)*100/Ia2;
disp(epsilon2,"The percentage error,(%) = ")
