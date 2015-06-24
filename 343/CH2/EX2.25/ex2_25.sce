V1=70.71             //Defining voltage equations in rectangular form
V2=%i*176.78
V3=91.86+%i*53.04
V4=100-%i*100;
V=V1+V2+V3+V4;
[Ro,Theta]=polar(V);
function y=f(t), y=Ro*sqrt(2)*sin(t+Theta), endfunction
disp("Volts",Ro*sqrt(2),"Maximum Voltage value with V2 polarity as it is")
V=V1-V2+V3+V4;
[Ro1,Theta1]=polar(V);
function y1=f(t), y1=Ro1*sqrt(2)*sin(t+Theta), endfunction
disp("Volts",Ro1*sqrt(2),"Maximum Voltage value with polarity of V2 reversed")