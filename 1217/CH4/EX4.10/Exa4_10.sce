//Exa 4.10
clc;
clear;
close;
// given data
VA=3;//in mVolt
VB=5;//in mVolt
R1=10;//in Kohm
R2=10;//in Kohm
R3=45;//in Kohm
R4=8;//in Kohm
R5=3;//in Kohm
RF=45;//in Kohm
disp("Considering Voltage Voa is at higher potential than Vob. Concept of virtual short yields");
disp("Vx=VA and Vy=VB");
I=(VA-VB)/R5;//in mA
VoA=VA+I*R4;//in mVolts
VoB=VB-I*R4;//in mVolts
disp(VoA,"Output of op-amp A1 in mVolt is");
disp(VoB,"Output of op-amp A2 in mVolt is");
Vo1=(1+RF/R1)*(R3/(R3+R2))*VoB;
Vo2=-(RF/R1)*VoA;
Vo=Vo1+Vo2;//in mVolt
disp(Vo,"Combined output of the circuit in mVolt is : ");