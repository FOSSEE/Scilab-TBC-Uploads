//Ex4_13
clc
IDSS=10*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current for n-channel DEMOSFET
ID=IDSS // since VGS=0V, so ID=maximum
VP=(-4)
disp("VP= "+string(VP)+" volts") // pinch off voltage 
VGS=(0)
disp("VGS= "+string(VGS)+" volts") // Gate to source voltage 
VDD=(10)
disp("VDD= "+string(VDD)+" volts") // Drain supply voltage 
RL=0.5*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
VDS=VDD-ID*RL
disp("VDS=VDD-ID*RL= "+string(VDS)+" volts") // Drain to source  voltage ,since VDS>VP DEMOSFET is in pinch off
disp("VDS>VP,so pinch off region")
RL=0.75*10^(3)
disp("RL= "+string(RL)+ " ohm")  // New Load resistance value
VDS=VDD-ID*RL
disp("VDS=VDD-ID*RL= "+string(VDS)+" volts") // New Drain to source  voltage for RL=750 ohm
disp("VDS<VP,so ohmic region")// since VDS < VP DEMOSFET is in ohmic region for RL=750 ohm and hence will not operate as a current source
