//example 2.4c,pg.no.17
x=[3 4 5 6];
xm=3;
xm=xm+1*(xm-1);//shift in pad due to interpolation
xm=xm-2//normal shifting
x1=[x(1:1/3:length(x))]//step interpolated
xm=3;
xm=xm+2*(xm-1)//shift in pad due to interpolation
y=[x1(1:2:xm-2),x1(xm:2:length(x1))]//decimation