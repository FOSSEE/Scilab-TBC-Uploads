// example 5.22
// caption: gauss-leguerre method
// I= integral 1/(x^2+2*x+2) in the range [0,~];

// since in the gauss-leguerre method the integral would be of the form e^x*f(x);

// observing the integral we can inffer that f(x)=%e^x/(x^2+2*x+2)
deff('[y]=f(x)','y=%e^x/(x^2+2*x+2) ');


// 1) since , from gauss leguerre two point rule;
I2=(1/4)*[(2+sqrt(2))*f(2-sqrt(2))+(2-sqrt(2))*f(2+sqrt(2))]

// 3) since , from gauss leguerre  three point rule;
I=(0.71109*f(0.41577)+0.27852*f(2.29428)+0.01039*f(6.28995)) 


// the exact solution is given by,

I=integrate('1/((x+1)^2+1)','x',0,1000)     // 1000 ~infinite;
