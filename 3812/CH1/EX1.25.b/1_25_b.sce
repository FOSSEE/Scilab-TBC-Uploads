//Example 1.25<b>
//Check whether the following signal is linear or not.
clear ;
close ;	
clc ;
T =20; //length of the signal
for n=1: T
x1(n)=n;x2(n)=2*n;
y1(n)=x1(n)*x1(n);
y2(n)=x2(n)*x2(n);
end
z=y1+y2;
for n =1: T
y3(n)=( x1(n)+x2(n)) ^2;
end
if z== y3 then
disp('The following signal is linear');
else
disp ( 'The following signal is non linear');
end
