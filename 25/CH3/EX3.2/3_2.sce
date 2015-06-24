// example:-3.2,page no.-87.
// program to find out load impedence.
Zo=100;  // characteristic impedence.
tao=0.560+0.215*%i;  // reflection coefficient.
z=(1+tao)/(1-tao);   // normalized impedence(normalized w.r.t Zo)
Zl=z*Zo;
// result
disp(Zl,'load impedence = ')
// by smith chart.
smith_chart(tao)
// when analyse with the help of smith chart.see the angle from x=0 axis i.e Tao_real axis.if it is above this axis take angle anticlockwise and if it is below this axis.take angle clockwise from Tao_real axis below.