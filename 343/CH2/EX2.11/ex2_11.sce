Vm=1;            //Assuming Vm=1
function y=f(t),y=Vm*Vm*sin(t)*sin(t),endfunction      //Defining Voltage Equation
T=2*%pi;
Res=sqrt(intg(%pi/4,%pi,f)/(T));
disp("Volts",Res,"Rms value of voltage");