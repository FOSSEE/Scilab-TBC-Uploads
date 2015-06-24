//Example 6.1
clc;clear;close;
x1=[1 1 2 2];
x2=[1 2 3 4];
ylength=length(x1);
//Calculation of linear convolution
z=convol(x1,x2);
//Calculation of circular convolution
for n=1:ylength
    y(n)=0;
    for k=1:ylength,
        l=n-k+1;
        if l <= 0 then
            l=l+ylength;
        end
     y(n)=y(n)+(x1(k)*x2(l));
     end
end
//Calculation of circular convolution using DFT and IDFT
X1=dft(x1,-1);
X2=dft(x2,-1);
Y1=X1.*X2;
y1=dft(Y1,1);
y1=clean(y1);
disp(z,'Linear Convolution sequence is z(n): ');
disp(y,'Circular Convolution sequence is y(n): ');
disp(y1,'Circular Convolution sequence calculated using DFT-IDFT method is y(n): ');