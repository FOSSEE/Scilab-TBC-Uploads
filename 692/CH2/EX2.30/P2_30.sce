//EXAMPLE 2.30
//Convolution of two sided sequences
clear;
clc;
g=[3 -2 4];//originating at n=-1 
h=[4 2 -1];//originating at n=0
q=length(g);
w=length(h);
z=q+w-1;
y0=0;
for i=1:z;
    y(i)=0;
    for k=1:i;
        if k>q
            g(k)=0;
        else
            if (i-k+1)>w
                h(i-k+1)=0;
            else
             y(i)= y(i) + g(k)*h(i-k+1);
            end
        end
    end
end
n=-1:z-2;
disp(y,'The Convolution of the two sequences is =')
clf();
a=gca();
figure(0);
a.x_location="origin";
plot2d3(n,y,2);
plot(n,y,'r.');
xtitle('convolution','n','y');
