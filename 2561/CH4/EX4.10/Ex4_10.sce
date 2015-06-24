//Ex4_10
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
KF=0.375*10^(-3)
disp("KF= "+string(KF)+" A/V^2") // Constant for  n-channel EMOSFET 
VGG=(VDD*R2)/(R1+R2)
disp("VGG= VDD*R2/(R1+R2)="+string(VGG)+" volts") // Gate voltage for  n-channel EMOSFET 
disp("Quadratic equation =36*ID^(2)-86.67*ID+49=0")// IDS=KF*(VGS-VT)^2 and VGS=VGG-ID*RD ,so Quadratic equation formed is :IDS=KF*(VGG-ID*RD-VT)^2 ,where ID in mA
p = [36  -86.67  49]
ID=roots(p)*10^(-3)//values of ID converted into Ampere  by multiplying by 10^(-3)
disp("ID = "+string(ID)+" A") //   drain current n-channel EMOSFET in Ampere 
VGS=VGG-ID*RF//  Gate voltage for ID = 1.5 mA and ID = 0.91 mA
disp("VGS = VGG-ID*RF = "+string(VGS)+" volts") //  Gate voltage 
disp("Since VGS < VT for ID=1.5 mA, hence ID = 1.5 mA cannot be chosen, so we chose ID= 0.91 mA as operating drain current IDQ")
IDQ=0.91*10^(-3)
disp("IDQ ="+string(IDQ)+" A")//Since VGS < VT for ID=1.5 mA, hence ID = 1.5 mA cannot be chosen, so we chose ID= 0.91 mA as operating drain current IDQ
change_IDQ=[(1-0.91)*100]/(1)// 
disp("change in IDQ = "+string(change_IDQ)+" percent")// Percent change in IDQ from value 1 mA from its actual value IDQ=0.91mA
VGSQ=VGG-IDQ*RF
disp("VGSQ = VGG-IDQ*RF = "+string(VGSQ)+" volts") //  Gate  operating point voltage 
VDSQ=VDD-IDQ*(RL+RF)
disp("VDSQ= VDD-IDQ*(RL+RF)= "+string(VDSQ)+" volts") // Drain voltage for n-channel EMOSFET 


// note: in the textbook author has given KF = .375 but I have work with KF = .375*10^-3A/V^2
