//Ex8_2
clc
Avf=-100
disp("Avf="+string(Avf)) // Voltage gain 
Rif=1
disp("Rif= "+string(Rif)+ " ohm")  //Input resistance of OP-AMP
R1=Rif
RF=-R1*Avf // using formulae Vo=(-RF/R1)*Vi
disp("RF= -R1*Avf="+string(RF)+ " ohm")  //Feedback resistance of OP-AMP
// NOTE:Error in value of RF since they have given value of Rif=1ohm but calculated RF by using Rif=1 Kilo ohm
// So i have calculated using Ri=1ohm and hence RF=100 ohm
