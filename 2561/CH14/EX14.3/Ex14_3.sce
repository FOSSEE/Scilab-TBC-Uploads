//Ex14_3
clc
VREF=-10
disp("VREF= "+string(VREF)+" V") // Reference voltage
RF=5*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
R=10*10^(3)
disp("R= "+string(R)+ " ohm")  // resistance
vLSB=(-RF*VREF)/(8*R)// Since IF=I/8,so vLSB=(-RF*IF)=(-RF*I/8)=(-RF*VREF/8*R)
disp("vLSB=(-RF*VREF)/(8*R)="+string(vLSB)+" V") // Equivalent voltage for binary word 0001
vo=-2*vLSB// Since current IF=I/4
disp("vo = -2*vLSB ="+string(vo)+" V") // Equivalent voltage for binary word 0010=2 (in decimal)
vo=-15*vLSB// Since current IF=I+(I/2)+(I/4)+(I/8)=(15*I/8),so vo=15*VLSB
disp("vo= -15*vLSB ="+string(vo)+" V") // Equivalent voltage for binary word 0010=2 (in decimal)
