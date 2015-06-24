V1=36.75+%i*21.22             //Defining voltage equations in rectangular form
V2=-45.93-%i*26.52
V3=-50+%i*50;
V=-30.59+%i*94.15;
V4=V-(V1+V2+V3);
[Ro,Theta]=polar(V4);
function y=f(t), y=Ro*sqrt(2)*sin(t+Theta), endfunction
disp("Volts",Ro*sqrt(2),"Maximum Voltage value")