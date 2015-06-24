//Perform Circular convolution of two sequences is x1={0.2,0.4,0.6,0.8,1.0,1.2,1.4,1.6} and x2(n)={0.1,0.3,0.5,0.7,0.9,1.1,1.3,1.5}
clc;
clear;
n=1:1:16
x1={0.2,0.4,0.6,0.8,1.0,1.2,1.4,1.6,0.2,0.4,0.6,0.8,1.0,1.2,1.4,1.6};
x2={0.1,0.3,0.5,0.7,0.9,1.1,1.3,1.5,0.1,0.3,0.5,0.7,0.9,1.1,1.3,1.5};
subplot(1,3,1)
plot2d3(n,x1,3);
subplot(1,3,2)
plot2d3(n,x2,3);
for n=9:1:16
    s1=0
    for m=1:1:8
       s1=s1+x1(m+1).*x2(n-m);
    end
   f(n-8)=s1;
   
end
subplot(1,3,3)
l=1:1:length(f);
plot2d3(l,f,3);
disp(f);