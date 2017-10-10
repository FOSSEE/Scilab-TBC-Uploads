//Chapter 34 Ex 4

clc;
close;
clear;
theta1=(60*%pi)/180; theta2=(30*%pi)/180;   //converted into radian
d1=36;     //given
x=poly(0,'x');
for x=1:25
    if round((d1+x)*tan(theta2))==round(x*tan(theta1)) then
        break
    end
end
mprintf("The breadth of the river is %d meters",x);
