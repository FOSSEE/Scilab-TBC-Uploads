//Ex4_8// NOTE :all values of book ans is wrong so give note-INCOMPLETE QUESTION
clc
IDSS=15*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current of JFET 
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
VP=(-6)
disp("VP= "+string(VP)+" volts") // pinch off voltage for JFET 
VGG=(VDD*R2)/(R1+R2)
disp("VGG= VDD*R2/(R1+R2)="+string(VGG)+" volts") // Gate voltage for JFET
disp("Quadratic equation =5.244*ID^(2)-75.68*ID+256=0")// where ID in mA
p = [5.244  -75.68  256]
ID=roots(p)*10^(-3)//values of ID converted into Ampere  by multiplying by 10^(-3)
disp("ID = "+string(ID)+" ampere") //   drain current JFET 
VDG=VDD-(ID*RL)-VGG
disp("VDG= "+string(VDG)+" volts") // Drain-gate voltage for JFET
disp("since VDG < magnitude_VP for ID=9.0189 mA which is inappropriate for JFET pinch off region ,hence ID=5.4128 mA is choosen  !") 
IDQ=5.41*10^(-3) // since VDG < magnitude_VP for ID=9.0189 mA which is inappropriate for JFET pinch off region ,hence ID=5.4128 mA is choosen  !
disp("IDQ ="+string(IDQ)+"  ampere")
VGSQ=VGG-IDQ*RF
disp("VGSQ = VGG-IDQ*RF = "+string(VGSQ)+" volts") //  Gate  operating point voltage 
VDSQ=VDD-IDQ*(RL+RF)
disp("VDSQ= VDD-IDQ*(RL+RF)= "+string(VDSQ)+" volts") // Drain voltage for JFET
VDGQ=VDSQ-VGSQ
disp("VDGQ = VDSQ-VGSQ ="+string(VDGQ)+" volts") // Drain-Gate voltage for JFET
disp("VDGQ > VP,Hence FET is in pinch off region")


//Roots for drain current quadratic equation are wrong in the book thus value for VGSQ,VDSQ and VDGQ are also wrong
