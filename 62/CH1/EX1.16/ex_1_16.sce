//ex_16 to check if a function is periodic
clear;
clc;
close;
//x(t)=cos(t+pi/4)
w=1
t=2*%pi;//t=2*pi/w
disp(t,'a')
//x(t)=sin(2pi*t/3)
w=2*%pi/3;
t=2*%pi/w;//check if t is rational
if t==ceil(t) then
    disp(t,'b');
else
    disp('non periodic','b')
end
//x(t)=cos(pi*t/3)+sin(pi*t/4)
w1=%pi/3;
w2=%pi/4;
t1=2*%pi/w1;
t2=2*%pi/w2;
t=lcm([t1 t2/2]);

if t==ceil(t) then
    disp(t,'c');
else
    disp('non periodic')
end 
//x(t)=cos(t)+sin(sqrt(2)*t)
w1=1;
w2=sqrt(2);
t1=2*%pi/w1;
t2=2*%pi/w2;
t=lcm([t1 t2]);
if t==ceil(t) then
    disp(t,'d');
else
    disp('non periodic')
end 
//x(t)=(sin(t))^2=(1-cos(2*t))/2
w=2;
t=2*%pi/w;
disp(t,'e')
//x(t)=e^(%i*(%pi/2)*t-1)
w=%pi/2;
t=2*%pi/w;
disp(t,'f')
//x[n]=e^(%i*(%pi/4))
w=%pi/4;
N=2*%pi/w;
disp(N,'g')
//x[n]=cos(1*n/4)
w=1/4;
N=2*%pi/w;
if N==ceil(N) then
    disp(N,'h');
else
    disp('non periodic','h')
end 
//x[n]=cos(%pi*n/3)+sin(%pi*n/4)
w1=%pi/3;
w2=%pi/4;
N1=2*%pi/w1;
N2=2*%pi/w2;
N=lcm([N1 N2/2]);
if N==ceil(N) then
    disp(N,'i');
else
    disp('non periodic','i')
end
//x[n]=(cos(%pi*n/8))^2=(1+cos(%pi*n/4))/2
w=%pi/4;
N=2*%pi/w;
disp(N,'j')
 
