//method of wrapping to fing convolution of periodic signal with one period
x=[1 2 -3];
h=[1 1];
y1=convol(h,x)
y1=[y1,zeros(5:9)]
y2=[y1(1:3);y1(4:6);y1(7:9)];
y=[0 0 0];
for i=1:3
    for j=1:3
        y(i)=y(i)+y2(j,i);
    end
end
y
x=[2 1 3];
h=[2 1 1 3 1];
y1=convol(h,x)
y1=[y1,zeros(8:9)]
y2=[y1(1:3);y1(4:6);y1(7:9)];
y=[0 0 0];
for i=1:3
    for j=1:3
        y(i)=y(i)+y2(j,i);
    end
end
y