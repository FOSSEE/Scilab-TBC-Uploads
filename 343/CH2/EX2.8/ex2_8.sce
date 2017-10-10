Vm=1;           //Assuming Vm=1;
function y=f(t),y=Vm*sin(t),endfunction        //Defining voltage equation
T=%pi;
Res=intg(%pi/6,%pi,f)/(T);
disp("Volts",Res,"Average voltage value");