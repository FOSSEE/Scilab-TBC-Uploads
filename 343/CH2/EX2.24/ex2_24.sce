V1=230            //Defining voltage equations in rectangular form
V2=-115+%i*200;
V3=-115-%i*200;
V=V1+V2+V3;
[Ro,Theta]=polar(V);
function y=f(t), y=Ro*sqrt(2)*sin(t+Theta), endfunction
disp("Volts",Ro*sqrt(2),"Maximum Voltage value")