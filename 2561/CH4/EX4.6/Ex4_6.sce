//Ex4_6
clc
IDSS=50*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current JFET 
VP=(-10)
disp("VP= "+string(VP)+" volts") // pinch off voltage for JFET 
VGSQ=(-5)
disp("VGSQ= "+string(VGSQ)+" volts") // Gate  operating point voltage 
ID=IDSS*(1-VGSQ/VP)^2
disp("ID =IDSS*(1-VGS/VP)^2= "+string(ID)+" ampere") //   drain current JFET 
RF=abs(VGSQ/ID) 
disp("RF= (VGSQ)/(ID)= "+string(RF)+ " ohm")  //calculation for  feedback resistance 
