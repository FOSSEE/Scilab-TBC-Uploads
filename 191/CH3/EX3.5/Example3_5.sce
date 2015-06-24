//Newton's Method
//the first few iteration converges quikcly in negative root as compared to positive root
clc;
clear;
close();
funcprot(0);
format('v',9);
deff('[Newton]=fx(x)','Newton=exp(x)-x-2');
deff('[diff]=gx(x)','diff=exp(x)-1');
x = linspace(-2.5,1.5);
plot(x,exp(x)-x-2)
//from the graph the function has 2 roots
//considering the initial negative root -10
x1 = -10;
x2 = x1-fx(x1)/gx(x1);
i=0;
while abs(x1-x2)>(0.5*10^-7)
    x1=x2;
    x2 = x1-fx(x1)/gx(x1);    
    i=i+1;
end
disp(i,'Number of iterations : ')
disp(x2,'The negative root of the function is : ')


//considering the initial positive root 10
x1 = 10;
x2 = x1-fx(x1)/gx(x1);
i=0;
while abs(x1-x2)>(0.5*10^-7)
    x1=x2;
    x2 = x1-fx(x1)/gx(x1);    
    i=i+1;
end
disp(i,'Number of iteration : ')
disp(x2,'The positive root of the function is : ')
//number of iterations showing fast and slow convergent