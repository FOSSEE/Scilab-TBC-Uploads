// example 5.16
// caption: gauss-legendre three point method
// I= integral 1/(1+x) in the range [0,1];
// first we need ti transform the interval [0,1 ] to [-1,1], since gauss-legendre three point method is applicable in the range[-1,1],

// let t=ax+b;
// solving for a,b from the two ranges, we get a=2; b=-1; t=2x-1;

// hence I=integral 1/(1+x) in the range [0,1]= integral 1/(t+3) in the range [-1,1];


deff('[y]=f(t)','y=1/(t+3)');
// since , from gauss legendre three point rule(n=2);
I=(1/9)*(5*f(-sqrt(3/5))+8*f(0)+5*f(sqrt(3/5))) 

// we know , exact solution is ln 2=0.693147;