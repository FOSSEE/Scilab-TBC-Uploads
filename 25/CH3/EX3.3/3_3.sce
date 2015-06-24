// example:-3.3,page no.-87.
// program to find out return loss in dB,SWR and reflection coefficient.
Zl=80-40*%i;  // load impedence.
Zo=50; // characteristic impedence.
z=Zl/Zo;  // normalized impedence.
tao=reflection_coefficient(Zl,Zo);
SWR=VSWR(abs(tao));
Rl=-20*log10(abs(tao));
disp(abs(tao),'reflection coefficient = ')
disp(SWR,'standing wave ratio = ')
disp(Rl,'return loss in dB = ')
smith_chart(tao)
// when analyse with the help of smith chart.see the angle from x=0 axis i.e Tao_real axis.if it is above this axis take angle anticlockwise and if it is below this axis.take angle clockwise from Tao_real axis below.