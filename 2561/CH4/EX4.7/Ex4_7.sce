//Ex4_7 
clc
IDSS=5*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current JFET 
RL=910
disp("RL= "+string(RL)+ " ohm")  //Load resistance
RF=2.29*10^(3) 
disp("RF= "+string(RF)+ " ohm")  //  feedback resistance 
R1=12*10^(6)
disp("R1= "+string(R1)+ " ohm")  // first resistance R1 at input side
R2=8.57*10^(6)
disp("R2= "+string(R2)+ " ohm")  // second resistance R2 at input side
VDD=(24)
disp("VDD= "+string(VDD)+" volts") // Drain voltage supply
VP=(-2)
disp("VP= "+string(VP)+" volts") // pinch off voltage for JFET 
VGG=(VDD*R2)/(R1+R2)
disp("VGG= VDD*R2/(R1+R2)="+string(VGG)+" volts") // Gate voltage for JFET
disp("Quadratic equation =5.244*ID^(2)-55.76*ID+144=0")//  Forming Quadratic equation using VGS = VGG-ID*RF and ID = IDSS(1-VGS/VP)^2 where ID in mA
p = [5.244  -55.76  144]
ID=roots(p)*10^(-3)// values of ID converted into Ampere  by multiplying by 10^(-3)
disp("ID = "+string(ID)+" ampere") //   drain current JFET 
disp("Since ID <=IDSS, hence ID=6.214 mA cannot be chosen, so we chose ID=4.42 mA")
IDQ=4.42*10^(-3) 
disp("IDQ ="+string(IDQ)+"  A")//Since ID <=IDSS, hence ID=6.214 mA cannot be chosen, so we chose ID=4.42 mA
VGSQ=VGG-IDQ*RF
disp("VGSQ = VGG-IDQ*RF = "+string(VGSQ)+" volts") //  Gate  operating point voltage 
VDSQ=VDD-IDQ*(RL+RF)
disp("VDSQ= VDD-IDQ*(RL+RF)= "+string(VDSQ)+" volts") // Drain voltage for JFET
VDGQ=VDSQ-VGSQ
disp("VDGQ = VDSQ-VGSQ ="+string(VDGQ)+" volts") // Drain-Gate voltage for JFET
disp("VDGQ >magnitude_VP,Hence FET is in pinch off region")
