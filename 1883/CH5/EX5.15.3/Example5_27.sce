//Chapter-5,Example5_15_3,pg 5_42

//for box of width a , the normalised eigen functions are 

//   'sci = sqrt(2/a)*sin(n*%pi*x/a)'

//   'sci_c = sqrt(2/a)*sin(n*%pi*x/a)'      complex conjugate 

//for first excitation 

n=2

//probability of finding the particle is     P = integral a/4 to 3a/4 of  sci * sci_c

//as 'a' is constant width 
//assume
a=1

function y=f(x),y= (2/a)*(sin(n*%pi*x/a))^2,                   // y = sci * sci_c
endfunction

P=intg(a/4,3*a/4,f)

printf('\nThe probability of finding the particle is  P = %.1f',P)
