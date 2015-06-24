//Example 10.3

clc; clear;
//y(n)=0.9y(n-1)+x(n)
//Input x(n)=0
n=-1;y=12;        //Initial Condition y(-1)=12
flag=1;
while n<8
    n=n+1;
    y=[y 0.9*y(n+1)];
    yr=round(y);
end
disp(n,'n=');
disp(y,'y(n)-exact');
disp(yr,'y(n)-rounded');
disp([-yr(n+2) yr(n+2)],'Deadband interval ')