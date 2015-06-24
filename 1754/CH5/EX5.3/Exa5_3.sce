//Exa 5.3
clc;
clear;
close;
//Given data :
A=100;//gain without feedback(unitless)
Beta=1/25;//feedback ratio (unitless)
Vi=50;//in mV
//Part (i) :
Af=A/(1+A*Beta);//gain with feedback(unitless)
disp(Af,"(i) Gain with feedback :");
//Part (ii) :
FeedbackFactor=Beta*A;//unitless
disp(FeedbackFactor,"(ii) Feedback Factor :");
//Part (iii) :
Vo_dash=Af*Vi*10^-3;//in volt
disp(Vo_dash,"(iii) Output Voltage in volts :");
//Part (iv) :
FeedbackVoltage=Beta*Vo_dash;//in volt
disp(FeedbackVoltage,"(iv) Feedback Voltage in volts :");
//Part (v) :
Vi_dash=Vi*(1+Beta*A);//in mv
disp(Vi_dash,"(v) New Increased Input Voltage in milli volts :");