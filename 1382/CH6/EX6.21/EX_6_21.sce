// Example 6.21;// change in overall gain
clc;
clear;
close;
Beta=0.01;//feedback
Ad= 60;//gain in dB
A= 10^(Ad/20);//gain
dA= 11;// open voltage gain
dAf= (1/(1+Beta*A))*dA;//GAIN WITH FEEDBACK
disp(dAf,"change in overall gain is in percentage")
disp("the result clearly shows that the percentage change reduction in overall gain with negative feedback is reduced from 11 to 1 percent .That is why we say that amplifier with negative feedback have stable gain")

