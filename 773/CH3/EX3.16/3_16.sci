//laplace//
syms t s;
x=6-4*%e^(-5*t)/5+%e^(-3*t) //Given step Response of the system
printf("Derivative of step response gives impulse response \n")
y=diff(x,t);     //Derivative of step response 
printf("Laplace Transform of Impulse Response gives the  Transfer Function \n ")    
p=laplace(y,t,s);
disp(p,"Transfer Function=")
