// example 5.17
// caption: gauss-legendre method
// I= integral 2*x/(1+x^4) in the range [1,2];
// first we need ti transform the interval [1,2 ] to [-1,1], since gauss-legendre three point method is applicable in the range[-1,1],

// let t=ax+b;
// solving for a,b from the two ranges, we get a=1/2; b=3/2; x=(t+3)/2;

// hence I=integral  2*x/(1+x^4) in the range [0,1]= integral 8*(t+3)/16+(t+3)^4 in the range [-1,1];


deff('[y]=f(t)','y=8*(t+3)/(16+(t+3)^4) ');

// 1) since , from gauss legendre one point rule;
I1=2*f(0)

// 2) since , from gauss legendre two point rule;
I2=f(-1/sqrt(3))+f(1/sqrt(3))

// 3) since , from gauss legendre three point rule;
I=(1/9)*(5*f(-sqrt(3/5))+8*f(0)+5*f(sqrt(3/5))) 


// we know , exact solution is 0.5404;