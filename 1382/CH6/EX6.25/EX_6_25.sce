// Example 6.25;//feedback fraction ,overall voltage gain,input impedance  ,output impedance and output volatge
clc;
clear;
close;
Zi=5;//input impedance in killo ohms
Zo=100;//input impedance in  ohms
A=10000;//gain wtihout feedback
R1=2;//resistance in killo ohms
R2=18;//resistance in killo ohms
Beta= R1/(R1+R2);//feedback fraction
Afb=round(A/(1+Beta*A));//overall gain
Zif= round((1+A*Beta)*Zi*10^-3);//input impedance with feedback in mega ohms
Zof= Zo/(1+Beta*A);//OUTPUT impedance with feedback in  ohms
Vs=10;//input voltage without feedback in milli volts
Vo= round(Vs/Afb);//output voltage with feedback in milli volts
disp(Beta,"feedback fraction is")
disp(Afb,"overall voltage gain")
disp(Zif,"input impedance with feedback in mega ohms")
disp(Zof,"OUTPUT impedance with feedback in  ohms")
disp(Vo,"output voltage with feedback in milli volts")
