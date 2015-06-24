//Ex4_9
clc
RL=12*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
RF=6*10^(3) 
disp("RF= "+string(RF)+ " ohm")  //  feedback resistance 
R1=12*10^(6)
disp("R1= "+string(R1)+ " ohm")  // first resistance R1 at input side
R2=8.57*10^(6)
disp("R2= "+string(R2)+ " ohm")  // second resistance R2 at input side
VDD=(24)
disp("VDD= "+string(VDD)+" volts") // Drain voltage supply
VT=(3)
disp("VT= "+string(VT)+" volts") // Threshold voltage for n-channel EMOSFET
KF=0.25*10^(-3)
disp("KF= "+string(KF)+" A/V^2") // Constant for n-channel EMOSFET 
VGG=(VDD*R2)/(R1+R2)
disp("VGG= VDD*R2/(R1+R2)="+string(VGG)+" volts") // Gate voltage for n-channel EMOSFET 
disp("Quadratic equation =9*ID^(2)-25*ID+16=0")// IDS=KF*(VGS-VT)^2 and VGS=VGG-ID*RD ,so Quadratic equation formed is :IDS=KF*(VGG-ID*RD-VT)^2 where ID in mA
p = [9  -25  16]
ID=roots(p)*10^(-3)//values of ID converted into Ampere  by multiplying by 10^(-3)
disp("ID = "+string(ID)+" A") //   drain current n-channel EMOSFET in Ampere 
VGS=VGG-ID*RF// For ID=1.78 mA and ID=1mA
disp("VGS = VGG-ID*RF = "+string(VGS)+" volts") //  Gate  operating point voltage 
disp("Since VGS < VT for ID=1.78 mA, hence ID = 1.78 mA cannot be chosen, so we chose ID= 1 mA as operating drain current IDQ")
IDQ=1*10^(-3)
disp("IDQ ="+string(IDQ)+"A")//Since VGS < VT for ID=1.78 mA, hence ID = 1.78 mA cannot be chosen, so we chose ID= 1 mA as operating drain current IDQ
VGSQ=VGG-IDQ*RF
disp("VGSQ = VGG-IDQ*RF = "+string(VGSQ)+" volts") //  Gate  operating point voltage 
VDSQ=VDD-IDQ*(RL+RF)
disp("VDSQ= VDD-IDQ*(RL+RF)= "+string(VDSQ)+" volts") // Drain voltage for n-channel EMOSFET 
// NOTE:Value of VGS= -0.6676390 volts for ID=1.78 mA but in book given as -0.68 V
