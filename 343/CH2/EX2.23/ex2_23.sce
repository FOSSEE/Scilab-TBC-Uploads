I1=2.12+%i*3.67             //Defining current equations in rectangular form
I2=-3.07+%i*1.77
I3=-1.84+%i*1.06;
I4=-(I1+I2+I3);
[Ro,Theta]=polar(I4);
function y=f(t), y=Ro*sqrt(2)*sin(t+Theta), endfunction
disp("Amperes",Ro*sqrt(2),"Maximum current value")