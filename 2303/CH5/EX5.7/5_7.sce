//Example 5.7
// overlap and add method 
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

x1=[x(1:L),zeros(1:3)]; 
x2=[x(6:2*L),zeros(1:3)];
x3=[x(11:3*L),zeros(1:3)];

//Convolution 
y1=convol(x1,h1);
y2=convol(x2,h1);
y3=convol(x3,h1);

//Display sequence y[n] in command window
for i=1:5
    y(i)=y1(i)
end
for i=6:8
    y(i)=y1(i)+y2(i-L)
end
for i=9:10
    y(i)=y2(i-L)
end
for i=11:13
    y(i)=y2(i-L)+y3(i-2*L)
end
for i=14:18
    y(i)=y3(i-2*L)
end

disp( "The convolution of x[n]=[1,2,3,4,5,1,2,3,4,5,1,2,3,4,5] and h[n]=[3,2,1,1] is ");
disp(y,"y[n]=")
