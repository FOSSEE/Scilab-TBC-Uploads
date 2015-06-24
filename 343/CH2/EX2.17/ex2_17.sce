Im=62.35;
w=323;
function y=f(t),y=Im*sin(w*t),endfunction       //Defining Voltage Equation
fr=w/(2*%pi);
Irms=Im/sqrt(2);
Iavg=0.637*Im;
formfac=Irms/Iavg;
disp("Amperes",Im,"Maximum value of current")
disp("Hertz",fr,"Frequency");
disp("Amperes",Irms,"Rms value of current");
disp("Amperes",Iavg,"Average value of current");
disp(formfac,"Form factor");