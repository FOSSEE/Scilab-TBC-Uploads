//Ex5_6
clc
IDSS=16*10^(-3)
disp("IDSS = "+string(IDSS)+" ampere") //  maximum drain current JFET 
VP=(-4)
disp("VP= "+string(VP)+" volts") // pinch off voltage for JFET 
VGSQ=(-2)
disp("VGSQ= "+string(VGSQ)+" volts") // Gate  operating point voltage 
Vsm=(0.2)
disp("Vsm= "+string(Vsm)+" volts") //  sinusoidal input voltage for JFET 
D=[((0.5)*(Vsm)^2)/(4*Vsm)]*100 // derived from ID=IDSS(1-VGS/VP)^2 and putting value of VGS=VGSQ+Vs, where Vs=Vsm sinwt
disp("D=[((0.5)*(Vsm)^2)/(4*Vsm)]*100  ="+string(D)+"% ") //  Percentage second harmonic distortion calculation
