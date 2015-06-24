Vm=1;          //Assuming Vm=1
function y=f(t),y=10*t*10*t,endfunction        //Defining Current Equation
T=4;
Res=sqrt(intg(0,2,f)/(T));
disp("Amperes",Res,"Rms current value");