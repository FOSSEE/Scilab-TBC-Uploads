//Perform Circular convolution of two sequences is x1={2,1,2,1} and x2(n)={1,2,3,4}
clc;
clear;
n=1:1:8
x1={1,2,1,2,1,2,1,2};//writing sequence with one shift
x2={1,2,3,4,1,2,3,4};
subplot(1,3,1)
plot2d3(n,x1,3);
subplot(1,3,2)
plot2d3(n,x2,3);
for n=5:1:8
    sum=0
    for m=1:1:4
       sum=sum+x1(m).*x2(n-m);
    end
   k(n-4)=sum;
end
subplot(1,3,3)
l=1:1:length(k);
plot2d3(l,k,3);
disp(k);