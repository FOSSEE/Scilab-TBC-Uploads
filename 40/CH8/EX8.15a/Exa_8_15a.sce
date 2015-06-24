//overlapp-add and overlap-save methods of convolution
//overlap-add method
xn=[1 2 3 3 4 5];
xon=[1 2 3];
x1n=[3 4 5];
hn=[1 1 1];
yon=convol(xon,hn);
y1n=convol(x1n,hn);
yon=[yon,0,0,0];
y1n=[0,0,0,y1n];
yn=yon+y1n
yn1=convol(xn,hn) 