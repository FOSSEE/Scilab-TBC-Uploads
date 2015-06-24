//Example 5.8
//overlap and save method 
clc;
clear;
close;
x=[1,2,3,4,5,1,2,3,4,5,1,2,3,4,5];
h=[3,2,1,1];
L=5;
M=length(h);
N=1:L+M-1;
n=length(N);

h1=[h,zeros(1:4)];
x1=[zeros(1:3),x(1:L)];
x2=[x1(6:n),x(6:2*L)];
x3=[x2(6:n),x(11:3*L)];

//Circular Convolution by linear convolution and padding zeros method
y1=conv(x1,h);
y2=conv(x2,h);
y3=conv(x3,h);

y1(15:16)=0;
c1=y1(1:8)+y1(9:16);
y2(15:16)=0;
c2=y2(1:8)+y2(9:16);
y3(15:16)=0;
c3=y3(1:8)+y3(9:16);

//Display sequence y[n] in command window
for i=1:L
    y(i)=c1(i+3)
end
for i=6:2*L
    y(i)=c2(i-2)
end
for i=11:3*L
    y(i)=c3(i-7)
end
for i=16:18
    y(i)=c1(i-15)
end

disp( "The convolution of x[n]=[1,2,3,4,5,1,2,3,4,5,1,2,3,4,5] and h[n]=[3,2,1,1] is ");
disp(y,"y[n]=")
