// Calculating the output voltage
clc;
n=6;
R=10000;
Io= (10/10*10^3)*{1*1+1*0.5+1*0.25+0*0.125+1*0.0625}*10^-6;
Rf=5000;
Eo=-Io*Rf;
disp(Eo,'Output voltage (V)=')