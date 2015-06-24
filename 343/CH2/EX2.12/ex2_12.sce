Vm=1;           //Assuming Vm=1
function y=f(t),y=Vm*Vm*sin(t)*sin(t),endfunction      //Defining Voltage Equation
function y1=f1(t),y1=0.866*0.866*Vm*Vm*sin(t)*sin(t),endfunction
T=%pi;
Res=sqrt(((intg(0,%pi/3,f))+(intg(%pi/3,%pi/2,f1))+(intg(%pi/2,%pi,f)))/T);
disp("Volts",Res,"Rms voltage value");