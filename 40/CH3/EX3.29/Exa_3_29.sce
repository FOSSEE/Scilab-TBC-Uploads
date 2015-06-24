//periodic or circular convolution
x=[1 0 1 1];
h=[1 2 3 1];
y1=convol(h,x)
y1=[y1,zeros(8:12)];
y2=[y1(1:4);y1(5:8);y1(9:12)];
y=[0 0 0 0];
for i=1:4
    for j=1:3
        y(i)=y(i)+y2(j,i);
    end
end
y