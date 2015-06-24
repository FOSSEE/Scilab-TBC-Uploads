//Hermite Interpolation
clc;
clear;
close();
format('v',9);
funcprot(0);
deff('[LL0]=L0(x)','LL0= 2*x^2-11*x+15');
deff('[LL1]=L1(x)','LL1= -4*x^2+20*x-24');
deff('[LL2]=L2(x)','LL2= 2*x^2-9*x+10');
deff('[LL0d]=L0d(x)','LL0d= 4*x-11');
deff('[LL1d]=L1d(x)','LL1d= -8*x+20');
deff('[LL2d]=L2d(x)','LL2d= 4*x-9');

disp('In this case n = 2. The legranges polynomial and their derivative . ');
disp('L0(x)=2*x^2-11*x+15  L1(x)= -4*x^2+20x-24  L2(x)=2x^2-9x+10');
disp('L0d(x)=4*x-11  L1d(x)= -8*x+20  L2d(x)=4*x-9');

disp('ri(x) = [1-2(x-xi)Lid(xi)][Li(x)]^2   si(x) = (x-xi)[Li(x)]^2');

deff('[rr0]=r0(x)','rr0=(1-2*(x-2)*L0d(2))*(L0(x))^2');
deff('[rr1]=r1(x)','rr1=(1-2*(x-2.5)*L1d(2.5))*(L1(x))^2');
deff('[rr2]=r2(x)','rr2=(1-2*(x-3)*L2d(3))*(L2(x))^2');

deff('[ss0]=s0(x)','ss0=(x-2)*L0(x)^2');
deff('[ss1]=s1(x)','ss1=(x-2.5)*L1(x)^2');
deff('[ss2]=s2(x)','ss2=(x-3)*L2(x)^2');

y = [log(2) log(2.5) log(3)];
yd = [0.500000 0.400000 0.333333];

deff('[H5]=H(x)','H5=r0(x)*y(1)+r1(x)*y(2)+r2(x)*y(3)+s0(x)*yd(1)+s1(x)*yd(2)+s2(x)*yd(3)');
y2 = H(2.7);
disp(y2,'The calculated value of y(2.7):');
act = log(2.7);
disp(act,'The exact value is of y(2.7): ');
err = act - y2;
disp(err,'The error is :');