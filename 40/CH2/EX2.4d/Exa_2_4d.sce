//example 2.4d,pg.no.17
x=[2 4 6 8]
xm=3;//denote 3rd sample has pad
x1=[1 3 5 7]
x2=interpln([x1;x],1:6)
xm=xm+1*(xm-1);//shift in pad due to interpolation
xm=xm-1//shift in pad due to delay
y=[x2(2:2:xm-2),x2(xm:2:length(x2))]//decimation