 
L= 1; //assuming Length L of box to be 1, this would not affect the probability
x1=0.45*L; //lower bound
x2=0.55*L; //upper bound
 
function y=f(x)
y= ((sin(n*(%pi)*x))^2)
endfunction      //defined the function

n=1;
P1= (2/L)*intg(x1,x2,f); //for ground state

n=2;
P2= (2/L)*intg(x1,x2,f);  //for first excited state

disp(P1,"The probability n ground state is: ")
disp(P2,"The probability in first excited state is: ")

//Result
// The probability n ground state is:    
//    0.1983632  

// The probability in first excited state is:    
//    0.0064511  