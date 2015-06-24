clc;
clear;
//the equations are:
//3*x1 + 2*x2=18 and -x1 + 2*x2=2

//equation 1 becomes,
//x2=-(3/2)*x1 + 9
//equation 2 becomes,
//x2=-(1/2)*x1 + 1

//plotting equation 1
for x1=1:6
    x2(x1)=-(3/2)*x1 + 9;
end
x1=[1 2 3 4 5 6];
//plotting equation 2
for x3=1:6
    x4(x3)=(1/2)*x3 + 1;
end
x3=[1 2 3 4 5 6];
plot(x1,x2)
plot(x3,x4)
xtitle("x2 vs x1","x1","x2")
//the lines meet at x1=4 amd x2=3
disp(3,"x2=","and",4,"x1=","The lines meet at=")