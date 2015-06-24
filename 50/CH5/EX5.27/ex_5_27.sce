// example 5.27
// caption: gauss-legendre three point method
// I= integral 1/(1+x) in the range [0,1];

// we are asked to subdivide the range into two,
// first we need to sub-divide the interval [0,1 ] to [0,1/2] and [1/2,1] and then transform both to [-1,1], since gauss-legendre three point method is applicable in the range[-1,1],

// t=4x-1 and y=4x-3;

// hence I=integral 1/(1+x) in the range [0,1]= integral 1/(t+5) in the range [-1,1]+ integral 1/(t+7) in the range [-1,1]


deff('[y1]=f1(t)','y1=1/(t+5)');
// since , from gauss legendre three point rule(n=2);
I1=(1/9)*(5*f1(-sqrt(3/5))+8*f1(0)+5*f1(sqrt(3/5))) 

deff('[y2]=f2(t)','y2=1/(t+7)');
// since , from gauss legendre three point rule(n=2);
I2=(1/9)*(5*f2(-sqrt(3/5))+8*f2(0)+5*f2(sqrt(3/5))) 

I=I1+I2

// we know , exact solution is .693147;