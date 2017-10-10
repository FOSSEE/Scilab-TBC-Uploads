//Example 1.25(d)
//To check whether the given discrete system is a Linear System (or) Non-Linear System y[n])= 2*x[n]-3
clear;
clc;
x1=[1,1,1,1];
x2=[2,2,2,2];
a=1;
b=1;
for n=1:length(x1)
x3(n)=a*x1(n)+b*x2(n);
end
for n=1:length(x1)
y1(n)=2*x1(n)-3;
y2(n)=2*x2(n)-3;
y3(n)=2*x3(n)-3;
end
for n=1:length(y1)
z(n)=a*y1(n)+b*y2(n);
end
count=0;
for n=1:length(y1)
if(y3(n)==z(n))
count=count+1;
end
end
if(count==length(y3))
disp('Since It satisifies the superposition principle')
disp('The given system is a Linear system')
else
disp('Since It does not satisify the superposition principle')
disp('The given system is a Non-Linear system')
end
