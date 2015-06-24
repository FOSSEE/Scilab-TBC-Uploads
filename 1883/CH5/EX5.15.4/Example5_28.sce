//Chapter-5,Example5_15_4,pg 5_43

//probability of finding the particle is      P = integral x1 to x2 of  sci * sci_c

//interval is (0,1/2)

x1=0

x2=1/2

//sci= x*sqrt(3)

//complex conjugate is   sci_c = x*sqtr(3)

function y=f(x),y=(x*sqrt(3))^2,                   // y = sci * sci_c
endfunction

P=intg(x1,x2,f)

printf('\nThe probability of finding the particle is  P = %.3f',P)
