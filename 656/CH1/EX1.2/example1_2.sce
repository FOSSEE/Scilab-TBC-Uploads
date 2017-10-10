// let q be the function of t q=f(t)
 
deff('q=f(t)','q=5*t*sin(4*%pi*t)');

//i is the current at t=0.5seconds in Amperes
 
derivative(f,0.5);

 i=ans;

disp("i=")
disp(i)
units='Amperes A'
i=[string(i) units];
disp(i)
// in amperes A

 
// the current i is 31.415 Amperes

