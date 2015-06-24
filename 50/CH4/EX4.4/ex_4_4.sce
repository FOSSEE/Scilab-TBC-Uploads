 // example 4.4
 // find the linear interpolation polinomial
 // using lagrange interpolation, 
 
 disp('sin(.1)=.09983; sin(.2)=.19867');
 
 
 P1=legrangeinterpol (.1,.2,.09983,.19867)
 
// hence; 
disp('P(.15)=.00099+.9884*.15')
disp('P(0.15)=0.14925');