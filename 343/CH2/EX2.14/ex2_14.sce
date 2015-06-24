Vm=1;              //Assuming Vm=1
function y=f(t),y=sin(t)*sin(t),endfunction          //Defining Voltage Equation
T=%pi;
Res=sqrt(intg(%pi/6,%pi,f)/(T));
disp("Volts",Res,"Rms voltage value");