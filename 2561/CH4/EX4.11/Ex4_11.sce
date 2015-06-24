//Ex4_11 Refer fig 4.7(b)// ANS is not correct check &correct
clc
RF=6*10^(3) 
disp("RF= "+string(RF)+ " ohm")  //  feedback resistance 
VDD=(20)
disp("VDD= "+string(VDD)+" volts") // Drain voltage supply
disp("part(i) ")// part(i) of this question
VT=(2)
disp("VT= "+string(VT)+" volts") // Threshold voltage for EMOSFET
KF=0.25*10^(-3)
disp("KF= "+string(KF)+" A/V^2") // Constant for EMOSFET 
ID=1*10^(-3)
disp("ID = "+string(ID)+" A") //   drain current EMOSFET in Ampere 
RL=[VDD-VT-sqrt(ID/KF)]/ID // Using formulae ID=KF*(VDD-ID*RL-VT)
disp("RL=[VDD-VT-sqrt(ID/KF)]/ID= "+string(RL)+ " ohm")  //Load resistance
disp("part(ii) ")// part(ii) of this question
VT=(3)
disp("VT= "+string(VT)+" volts") // Threshold voltage for EMOSFET
KF=0.375*10^(-3)
disp("KF= "+string(KF)+" A/V^2") // Constant for EMOSFET 
disp("Quadratic equation =(256)*ID^(2)-(546.67)*ID+289=0")//IDS=KF*(VGS-VT)^2 =KF*(VDS-VT)^2 and VDS=VDD-ID*RL,so Quadratic equation  is:IDS=KF*(VDD-ID*RL-VT)^2 ,where ID in mA
p = [256  -546.66  289]
ID=roots(p)*10^(-3)//values of ID converted into Ampere  by multiplying by 10^(-3)
disp("ID = "+string(ID)+" A") //   drain current EMOSFET in Ampere 
VDS=VDD-ID*RL// Drain voltage for ID = 1.173 mA and ID = 0.962 mA
disp("VDS =VDD-ID*RL = "+string(VDS)+" volts") //  Drain voltage 
IDQ=0.962*10^(-3)
disp("IDQ ="+string(IDQ)+" A")//Since VDS < VT for ID=1.173 mA, hence ID = 1.173 mA cannot be chosen, so we chose ID= 0.962 mA as operating drain current IDQ
Percentage_change=[(1-0.962)*100]/(1)
disp("Percentage change= "+string(Percentage_change)+" percent")// Percent change in IDQ  value from 1 mA(part(i)) to its  value ( of part(ii))IDQ=0.91mA
// NOTE: part(ii):the values of ID = 1.173 mA or ID = 0.962 mA but in book given as ID= 1.197 mA and ID = 0.939 mA .Hence (correct) Percentage_change in ID= 3.8 % but in book given as 6.1 % 
