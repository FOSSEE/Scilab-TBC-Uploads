function y=f(t),y=(10+10*sin(t))*(10+10*sin(t)),endfunction      //Defining Current Equation
T=2*%pi;
Res=sqrt(intg(0,2*%pi,f)/(T));
disp("Amperes",Res,"Rms current value");