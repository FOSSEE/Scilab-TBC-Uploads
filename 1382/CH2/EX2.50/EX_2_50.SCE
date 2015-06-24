// Example 2.50:Ai,Ri,Av,Ro
clc;
clear;
close;
Rl=5000;//Load resistance in ohms
Rs=1000;//Source internal resistance
R1=10;//Resistance in killo ohms
R2=10;//Resistance in killo ohms
Re=5*10^3;//Emitter resistance in  ohms
//H Paramters are
Hic=2;//in killo ohms
Hrc=1;
Hfc=-51;;
Hoc=25*10^-6;// in ampere per volt
Ai= -Hfc/(1+Hoc*Rl);// Current gain
Ri= (Hic+(Hrc*Ai*Rl))*10^-3;// Input resistance in killo ohms
Z1= (R1*R2)/(R1+R2);//
Zi=(Ri*Z1)/(Ri+Z1);// input resistance of amplifier stage in killo ohms
Av=round((Ai*(Rl/Ri))*10^-3)// Voltage Gain
Ro=-(Rs+Hic*10^3)/Hfc;// Output resistance in  ohms
Zo= (Ro*Re)/(Ro+Re);//output resistance of amplifier stage in ohms
disp(Ai,"Current gain is")
disp(Ri,"Input resistance in ohms is")
disp(Av,"Voltage gain is")
disp(Zi,"input resistance of amplifier stage in killo ohms")
disp(Ro,"Output resistance in  ohms")
disp(Zo,"output resistance of amplifier stage in ohms")

