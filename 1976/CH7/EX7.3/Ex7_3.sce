
//To determine the acceleration required to run the service
//Page 364
clc;
clear;

D=1;
Ts=20; //Stopping Time
B=3;
Vsh=30;
ShT=D*3600/Vsh; //Schedule time
T=ShT-Ts; //Actual Run Time
Vav=D*3600/T; //Average Speed
Vm=1.25*Vav;
a=poly(0,'a'); //Acceleration Variable

X=((2*Vm*T)-((Vm^2)*((1/a)+(1/B))))-(7200*D); //Polynomial Equation to find 'a'

disp(X(2));
printf('\n The above equation is equated to zero to find the Acceleration\n\n')

a=roots(X(2)); //Numerical Value of the Acceleration

printf('The Accleration required to run the service is %g Kmphps\n',a)
