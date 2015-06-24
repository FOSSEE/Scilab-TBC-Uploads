// Example 2.51:Ai,Ri,Av,Z0
clc;
clear;
close;
R1=20;//Resistance in killo ohms
R2=10;//Resistance in killo ohms
Rc=5;//collector resistance in killo ohms
R=10;//resistance in killo ohms
Rs=800;//Internal resistance in ohms
Rl=(Rc*R)/(Rc+R);//Load resistance in killo ohms
//H Paramters are
Hie=1.5;//in killo ohms
Hre=5*10^-3;
Hfe=50;
Hoe=2*10^-6;// in micro ampere per volt
Ai= -Hfe;// Current gain
Ri= Hie;// Input resistance in ohms
Z1= (R1*R2)/(R1+R2);//
Zi=(Ri*Z1)/(Ri+Z1);// input resistance of amplifier stage in killo ohms
Av= round(Ai*(Rl/Ri));// Voltage Gain
Ro=(1/Hoe)*10^3;//output resistane in killo ohms
Zo=(Ro*Rl)/(Ro+Rl);//output resistance of amplifier stage in ohms
disp(Ai,"Current gain is")
disp(Zi,"input resistance of amplifier stage in killo ohms")
disp(Av,"Voltage gain is")
disp(Zo,"output resistance of amplifier stage in ohms")
