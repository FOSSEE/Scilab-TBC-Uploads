// example 5.21
// caption: gauss-leguerre method
// I= integral e^-x*(3*x^3-5*x+1) in the range [0,~];

// observing the integral we can inffer that f(x)=(3*x^3-5*x+1)

deff('[y]=f(x)','y=(3*x^3-5*x+1) ');


// 1) since , from gauss leguerre two point rule;
I2=(1/4)*[(2+sqrt(2))*f(2-sqrt(2))+(2-sqrt(2))*f(2+sqrt(2))]

// 3) since , from gauss leguerre  three point rule;
I3=(0.71109*f(0.41577)+0.27852*f(2.29428)+0.01039*f(6.28995)) 


