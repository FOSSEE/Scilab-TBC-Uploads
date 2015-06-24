//example 10.6
clc; funcprot(0);
// Initialization of Variable
omega1=0.002;
omega2=0.0094;
ma1dot=180.0;
ma2dot=497.0;
omega3=(omega1*ma1dot+omega2*ma2dot)/(ma1dot+ma2dot);
disp(omega3,"relative humidity");
k1=10;//(ha+whv)1
k2=47.8;//(ha+whv)2
k3=(ma1dot*k1+ma2dot*k2)/(ma1dot+ma2dot)
disp(k3,"(ha+whv)3 in kJ/kg");
disp(19,"temperature by inspection in degreeC")
clear()
