// page no 702
// prob no 15.4
clc;
x0=(-1);x1=1;//given
y0=(-2);y1=2;//given
G=2;//gain of amplifier
//the probbilities are given as P(x)=1/2 for |x|<1 & P(y)=1/4 for |y<2| otherwise P(x)=P(y)=0.
//P(x<1 & -x<1)=1/2;
//P(y<2 & -y<2)=1/4;
// hence entropies are given as
g1=(1/2)*log2(2);
g2=(1/4)*log2(4); 
X=integrate('g1*1','x',x0,x1);
Y=integrate('g2*1','y',y0,y1);
disp(+'bit',X,"entropy = ");
disp(+'bits',Y,"entropy = ");
//Here the entropy of random variable 'y' is twice that of the 'x'.This results may come as a surprise,since a knowledge of 'x' uniquely determines 'y' and vice versa , since y=2x.Hence , the average uncertainty of x and y should be identical.
// The reference entropy R1 for x is -log dx ,and The reference entropy R2 for y is -log dy (in the limit as dx,dy->0 ).
// R1= lim (dx->0) -log dx
//R2= lim (dy->0) -log dy
//and R1-R2 = lim(dx,dy->0) log(dx/dy) = log (dy/dx) = log2 2 =1 bit
//Therefore,the reference entropy of x is higher than the reference entropy for y. Hence we conclude that 
disp(" if x and y have equal absolute entropies,their relative (differential) entropies must differ by 1 bit ");