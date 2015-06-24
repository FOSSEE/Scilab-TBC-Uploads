//Secant Method
//the first few iteration converges quikcly in negative root as compared to positive root
clc;
clear;
close();
funcprot(0);
format('v',9);
deff('[Secant]=f(x)','Secant=exp(x)-x-2');
x = linspace(0,1.5);
subplot(2,1,1);
plot(x,exp(x)-x-2);
plot(x,0);
//from the graph the function has 2 roots
//considering the initial negative root -10
x0 = -10
x1 = -9;
x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
i=0;
while abs(x1-x2)>(0.5*10^-7)
    x0=x1;
    x1=x2;
    x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));    
    i=i+1;
end
disp(i,'Number of iterations : ')
disp(x2,'The negative root of the function is : ')


//considering the initial positive root 10
subplot(2,1,2);
x = linspace(-2.5,0);
plot(x,exp(x)-x-2);
plot(x,0);
x0 = 10
x1 = 9;
x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
i=0;
while abs(x1-x2)>(0.5*10^-7)
    x0=x1;
    x1=x2;
    x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    i=i+1;
end
disp(i,'Number of iteration : ')
disp(x2,'The positive root of the function is : ')
//number of iterations showing fast and slow convergent

format('v',6)
//Order of secant method (p)
 p = log(31.52439)/log(8.54952);
 disp(p,'Order of Secant Method : ')