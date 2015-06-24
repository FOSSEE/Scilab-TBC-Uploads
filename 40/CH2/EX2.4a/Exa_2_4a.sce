//example 2.4a pg.no.17
x=[1 2 5 -1];
xm=2;//denotes 2nd sample has pad.
y=[x(1:2:xm-2),x(xm:2:length(x))]//decimation
h=[x(1:1/3:length(x))]//step interpolated
g=h;
for i=2:3
    g(i:3:length(g))=0;
end
//zero interpolated
x1=1:3:3*length(x);
s=interpln([x1;x],1:10)//linear interpolated