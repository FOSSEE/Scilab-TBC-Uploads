//Ex8_4
clc
Ir=10*10^(-3)
disp("Ir = "+string(Ir)+" ampere/lumen of radiant energy ") //photodiode Reverse saturation current for constant reverse bias VR
RF=10*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
E=1*10^(-2)
disp("E = "+string(E)+" lumens")//  radiant energy
IR=Ir*E
disp("IR =Ir*E= "+string(IR)+" ampere") // Reverse saturation current
Vo=IR*RF
disp("Vo=IR*RF= "+string(Vo)+" volts") //  output voltage
s=E/Vo
disp("scale factor=E/Vo= "+string(E)+" lumens/V") //  Scale factor of photometer


