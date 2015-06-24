//Convolution with Step Function
x=[1 2 3 4 5];
h=[ones(1:5)];
a=convol(h,x);
b(1)=a(1);
for i=2:length(x)
    b(i)=b(i-1)+x(i);
end
disp(a(1:length(x)),b,'Step Response is running sum of impulses can be seen below');
