//Ex8_5
clc
Av=1*10^(5)
disp("Av= "+string(Av)) //Voltage gain
RF=100*10^(3)
disp("RF= "+string(RF)+ " ohm")  //Feedback resistance
RM=10*10^(3)
disp("RM= "+string(RM)+ " ohm")  // D.C Ammeter internal resistance
is=10*10^(-6)
disp("is = "+string(is)+" ampere") //  Source current
vo=is*RF
disp("vo=is*RF= "+string(vo)+" volts") //  output voltage
S=vo/is
disp("S=vo/is= "+string(S)+" V/A") // Sensitivity of Ammeter
Rif=RF/(1+Av)
disp("Rif=RF/(1+Av)= "+string(Rif)+ " ohm")  //Input resistance of OP-AMP
im=100*10^(-6)
disp("im = "+string(im)+" ampere") // Meter Full-Scale deflection current   
RF=(im*RM)/is
disp("RF=(im*RM)/is= "+string(RF)+ " ohm")  // New required Feedback resistance for im=100 micro ampere
