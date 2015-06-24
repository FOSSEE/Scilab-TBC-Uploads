//Example 2.5<i>
//Determine whether the following system is time invariant or not.
clc;
clear  all;
T=20;//length of the signal.
s=2;//shift
for n=1:T
    x(n)=n;
    y(n)=n*x(n);
end
IP=x(T-s);
OP=y(T-s);
if IP==OP then
    disp('The given system is time invariant');
else
    disp('The given system is  time variant');
end
//Example 2.5<ii>
//Determine whether the following system is time invariant or not.
clc;
clear  all;
T=-10:10;//length of the signal.
s=2;//shift
for n=1:length(T)
    x(n)=2;
    y(n)=x(n)*cos(50*%pi.*T(n));
end
IP=x(T(n)-s);
OP=y(T(n)-s);
if IP==OP then
    disp('The given system is time invariant');
else
    disp('The given system is  time variant');
end
//Example 2.5<vi>
//Determine whether the following signal is time invariant or not.
clc;
clear all;
N=10;
s=1//shift;
k=2;
for n=1:N
    x(n)=n;
end
for n=1:(N/k)
    y(n)=x(k*n);
end
ip=x(N-s);
op=y((N/k)-s);
if(ip==op) then
    disp('the following signal is time invariant');
else 
    disp('The given signal is time variant');
//Example 2.5<vii>
//Determine whether the following signal is time invariant or not.
clc;
clear all;
T=20;
s=4;//shift
x(1)=1
for n=2:T
    x(n)=n;
    y(n)=x(n-1).*x(n-1);
end
inputshift=x(T-s);
outputshift=y(T-s);
if (inputshift==outputshift) then
    disp('The given signal is time invariant');
else 
    disp('The given signal is  time variant');
end
