V1=42.43+%i*0;              //Defining voltage equations in rectangular form
V2=14.14+%i*24.49;
Va=V1+V2;
[Ro,Theta]=polar(Va);
Vm=Ro*sqrt(2);
disp("Volts",Vm,"Maximum value of voltage considering addition of voltages")
function y=f(t), y=Ro*sin(t+Theta),endfunction      //Defining voltage equation
Vb=V1-V2;
[Ro1,Theta1]=polar(Vb);
Vm1=Ro1*sqrt(2);
function y1=f(t),y1=Ro*sin(t+Theta1),endfunction   //Defining voltage equation
disp("Volts",Vm1,"Maximum value of voltage considering difference of voltages")