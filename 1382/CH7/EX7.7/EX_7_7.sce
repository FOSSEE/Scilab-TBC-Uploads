// Example 7.6:operating frequency ,feedback fration ,minimum gain and emitter resistance
clc;
clear;
close;
Rc=2.5;//collector resistance in killo ohms
C1=0.001;//capacitance of tunned circuit in micro farad
C2=0.01;//capacitance of tunned circuit in micro farad
L=100;//INDUCTANCE of tunned circuit in micro henry
C=(C1*C2)/(C1+C2);//total capacitance in micro farad
fo=round((1/(2*%pi*sqrt(L*10^-6*C*10^-6)))*10^-3);//tunned frequency in killo hertz
Beta=C1/C2;//feedback fration
Amin= 1/Beta;//gain
Re= Rc*10^3/Amin;//emitter resistance in ohms
disp(fo,"tunned frequency in killo hertz")
disp(Beta,"feedback fraction is")
disp(Amin,"minimum gain is")
disp(Re,"emitter resistance in ohms")
