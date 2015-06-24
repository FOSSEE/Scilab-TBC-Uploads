function y=f(t),y=10*t,endfunction          //Defining the current function
T=4;
Res=intg(0,2,f)/(T);
disp("Amperes",Res,"Average current value");