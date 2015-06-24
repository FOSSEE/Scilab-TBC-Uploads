//Example 1.6://ARITHEMATIC MEAN
clc;
clear;
T=[99.7,99.8,99.9,100,100.1,100.2,100.3];//VOLTS
f=[2,8,20,40,21,6,3];//frequency of occurence
for i=1:7
    qb(i)=T(i)-T(6);
end
prdtc=[(qb(1)*f(1))+(qb(2)*f(2))+(qb(3)*f(3))+(qb(4)*f(4))+(qb(5)*f(5))+(qb(6)*f(6))+(qb(7)*f(7))]
am=T(6)+(prdtc/100);//arithemetic mean
disp(am,"arithmetic mean is,(V)=")
