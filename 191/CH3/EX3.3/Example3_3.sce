//We have quadratic equation x^2-2*x-8=0 with roots -2 and 4
//for solving it we use fixed point iteration method for that we rearrange it in 3 ways.
//first way x=(2*x+8)^(1/2)
//here x0 is chosen arbitrarily

clear;
clc;
close();
format('v',5)
funcprot(0);
deff('[fixed_point]=fx(x)','fixed_point=(2*x+8)^0.5')
x0=5;
while abs(x0-fx(x0))>0.5*10^(-2)
  x0=fx(x0);
end
disp(x0,'root is :')

//second way x=(2*x+8)/x

format('v',5)
funcprot(0);
deff('[fixed_point]=fx(x)','fixed_point=(2*x+8)/x')
x0=5;
while abs(x0-fx(x0))>0.5*10^(-2)
  x0=fx(x0);
end
disp(x0,'root is :')

//third way x=(x^2-8)/2

format('v',10)
funcprot(0);
deff('[fixed_point]=fx(x)','fixed_point=(x^2-8)/2')
x0=5;
for i=1:5
  x0=fx(x0);
  disp(x0,'value is :')
end
disp(x0,'As you can see that the root is not converging.So this method is not applicable.')

