Vm=1;                //Assuming Vm=1
function y=f(t),y=Vm*sin(t),endfunction           //Defining voltage Equation
function y1=f1(t),y1=0.866*Vm*sin(t),endfunction
T=%pi;
Res=((intg(0,%pi/3,f))+(intg(%pi/3,%pi/2,f1))+(intg(%pi/2,%pi,f)))/T;
disp("Volts",Res,"Average voltage value");