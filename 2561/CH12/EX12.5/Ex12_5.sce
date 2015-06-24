//Ex12_5
clc
VEE=15
disp("VEE= "+string(VEE)+" volts") //  voltage supply 
VCC=15
disp("VCC= "+string(VCC)+" volts") //  voltage supply
R1=10*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
RF=20*10^(3) 
disp("RF= "+string(RF)+ " ohm")  // Feedback resistance
RB1=3*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
RB2=RB1
RF1=1*10^(3) 
disp("RF1= "+string(RF1)+ " ohm")  // Feedback resistance
RF2=RF1
Av=1*10^(3)
disp("Av= "+string(Av))
disp("part(i)")
VBR1= (VCC*RF1)/RB1
VBR2 = VBR1
disp("VBR1=VBR2=(VCC*RF1)/RB1= "+string(VBR1)+" volts") //Limit values at the break points and VBR=VBR1=VBR2
So=-RF/R1
disp("So=-RF/R1= "+string(So))// slope of Transfer characteristic at zero crossings 
S1=-(RF1/R1)
disp("S1=S2=-RF1/R1= "+string(S1))// slope of Transfer characteristic at the extreme ends
VSL=(-VBR1/So)
disp("VSL=VSU=(-VBR1/So)= "+string(VSL)+" volts") //  magnitude of input voltage required to produce vo=VBR
VSU=VSL
disp("part(ii)")
VSU=(VBR2/Av)//Formulae
disp("VSU=VSL=(VBR2/Av)= -"+string(VSU)+", +"+string(VSU)+" volts") //  magnitude of input voltage required to produce vo=VBR in case gain Av is very large
