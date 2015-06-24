function y=f(t),y=20*sin(t),endfunction    //defining the voltage function
T=2*%pi;
Res=intg(0,%pi,f)/(T);
disp("Volts",Res,"Average voltage value");