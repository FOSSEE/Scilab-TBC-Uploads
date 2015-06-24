//example 2.4 b,c.pg.no.17
x=[3 4 5 6];
xm=3;//denotes 3rd sample has pad
xm=xm-1;//shifting
g=[x(xm-2:-2:1),x(xm:2:length(x))]//decimation
xm=3;
h=[x(1:1/2:length(x))]//step interpolated
