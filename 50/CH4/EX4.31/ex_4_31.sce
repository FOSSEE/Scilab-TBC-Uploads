// example 4.31
// obtain the linear polinomial approximation to the function f(x)=x^3

// let P(x)=a0*x+a1

// hence I(a0,a1)= integral (x^3-(a0*x+a1))^2 in the interval [0,1]

printf('I=1/7-2*(a0/5+a1/4)+a0^2/3+a0*a1+a1^2')
printf('dI/da0 = -2/5+2/3*a0+a1=0')

printf('dI/da1 = -1/2+a0+2*a1=0')

// hence

printf('[2/3 1;1 2]*[a0 ;a1]=[2/5; 1/2]')

// solving for a0 and a1;

a0=9/10;
a1=-1/5;
// hence  considering the polinomial with intercept P1(x)=(9*x-2)/10;

// considering the polinomial approximation through origin P2(x)=3*x/5;