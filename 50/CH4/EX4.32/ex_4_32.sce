// example 4.32
// obtain the linear polinomial approximation to the function f(x)=x^1/2

// let P(x)=a0*x+a1


// for n=1;
// hence I(c0,c1)= integral (x^1/2-(c1*x+c0))^2 in the interval [0,1]


printf('dI/dc0 = -2*(2/3-c0-c1/2)=0')

printf('dI/dc1 =-2*(2/5-c0/2-c1/3) =0')

// hence

printf('[1 1/2;1/2 1/3]*[c0 ;c1]=[-4/3; -4/5]')

//  hence solving for c0 and c1;


// the first degree square approximation P(x)=4*(1+3*x)/15;

// for n=2;

// hence I(c0,c1,c2)= integral (x^1/2-(c2*x^2+c1*x+c0))^2 in the interval [0,1]


printf('dI/dc0 = (2/3-c0-c1/2-c2/2)=0')

printf('dI/dc1 =(2/5-c0/2-c1/3-c2/4) =0')

printf('dI/dc2 =(2/7-c0/3-c1/4-c2/5) =0')


// hence

printf('[1 1/2 1/2;1/2 1/3 1/4;1/3 1/4 1/5]*[c0 ;c1;c2]=[-2/3; -2/5;-2/7]')

//  hence solving for c0,c1 and c2;


// the first degree square approximation P(x)=(6+48*x-20*x^2)/35;


