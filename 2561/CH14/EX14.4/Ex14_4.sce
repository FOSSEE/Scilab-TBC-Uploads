//Ex14_4
clc
VREF=-10
disp("VREF= "+string(VREF)+" V") // Reference voltage
RF=5*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
R=10*10^(3)
disp("R= "+string(R)+ " ohm")  // resistance
vMSB=-(RF*VREF)/(2*R)// Since IF=I/2,so vMSB=(-RF*IF)=(-RF*I/2)=(-RF*VREF/2*R)
disp("vMSB=-(RF*VREF)/(2*R)="+string(vMSB)+" V") // Equivalent voltage for binary word 1000=8(in decimal)
vo2=vMSB/2// Since current IF=I/4
disp("vo2 = vMSB/2 ="+string(vo2)+" V") // Equivalent voltage for binary word 0100=4 (in decimal)
vo3=(15/8)*vMSB// Since current IF=I+(I/2)+(I/4)+(I/8)+(I/16)=(15*I/6),so vo=(15/8)*VMSB
disp("vo3= (15/8)*vMSB ="+string(vo3)+" V") // Equivalent voltage for binary word 1111=15 (in decimal)
