function y=f(t),y=6*t,endfunction           //Defining the voltage equation
T=3;
Res=intg(0,3,f)/(T);
disp("Volts",Res,"Average voltage value");