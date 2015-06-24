// Example 6.24;// feedback fration ,overall voltage gain and output voltage
clc;
clear;
close;
A=5000;//gain wtihout feedback
R1=1;//resistance in killo ohms
R2=9;//resistance in killo ohms
Beta= R1/(R1+R2);//feedback fraction
Afb=round(A/(1+Beta*A));//overall gain
Vs=2;//input voltage without feedback in milli volts
Vo= round(Afb*Vs);//output voltage with feedback in milli volts
disp(Beta,"feedback fraction is")
disp(Afb,"overall voltage gain")
disp(Vo,"output voltage with feedback in milli volts")
