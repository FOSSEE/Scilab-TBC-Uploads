Vm=1;             //Assuming Vm=1
function y=f(t),y=sin(t+(%pi/3))*sin(t+(%pi/3)),endfunction   //Defining Voltage Equation
T=2*(%pi/3);
Res=sqrt(intg(0,T,f)/(T));
disp("Volts",Res,"Rms voltage value");