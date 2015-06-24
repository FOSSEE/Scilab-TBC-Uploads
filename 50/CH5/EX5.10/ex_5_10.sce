// example 5.10;
// find the jacobian matrix;


// given two functions in x,y;
// and the point at which the jacobian has to be found out;

deff('[w]=f1(x,y)','w=x^2+y^2-x'); 

deff('[q]=f2(x,y)','q=x^2-y^2-y');

h=1;k=1;

J= jacobianmat (f1,f2,h,k);
disp(J); 