//(b)overlap-save method
xn=[1 2 3 3 4 5];
hn=[1 1 1];
xon=[0 0 1 2 3];
x1n=[2 3 3 4 5];
x2n=[4 5 0 0 0];
yon=convol(xon,hn);
y1n=convol(x1n,hn);
y2n=convol(x2n,hn);
yno=yon(3:5);
yn1=y1n(3:5);
yn2=y2n(3:5);
yn=[yno yn1 yn2]
YN=convol(xn,hn)