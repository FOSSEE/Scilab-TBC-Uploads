//Example 2.29,Convolution using Tabular method.
clear;
clc;
x=[-2 0 1 -1 3];
h=[1 2 0 -1];
q=length(x);
w=length(h);
z=q+w-1;
y0=0;
for i=1:z;
    y(i)=0;
    for k=1:i;
        if k>q
            x(k)=0;
        else
            if (i-k+1)>w
                h(i-k+1)=0;
            else
             y(i)= y(i) + x(k)*h(i-k+1);
            end
        end
    end
end
disp(y','The Convolution of the two sequences is =')
