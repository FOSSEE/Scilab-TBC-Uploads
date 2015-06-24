V1=17.68             //Defining voltage equations in rectangular form
V2=6.12+%i*3.54
V3=%i*21.21
V4=10-%i*10;
V=V1+V2+V3+V4;
[Ro,Theta]=polar(V);
function y=f(t), y=Ro*sqrt(2)*sin(t+Theta), endfunction
disp("Volts",Ro*sqrt(2),"Maximum Voltage value")