// example 4.15:
// obtain the interpolate using backward differences polinomial


xL=[.1 .2 .3 .4 .5 ]'

f=[1.4 1.56 1.76 2 2.28]'
n=2;


// hence;
disp('P=1.4+(x-.1)*(.16/.1)+(x-.5)*(x-.4)*(.04/.02)')
disp('P=2x^2+x+1.28');

// 1) obtain the interpolate at x=0.25;
x=0.25;
[P]=NBDP(x,n,xL,f);
P
disp('f(.25)=1.655');


// 2) obtain the interpolate at x=0.35;
x=0.35;
[P]=NBDP(x,n,xL,f);
P
disp('f(.35)=1.875');