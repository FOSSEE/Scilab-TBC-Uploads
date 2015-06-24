//Ex8_6
clc
Av=36
disp("Av= "+string(Av)+" dB") //Voltage gain
R1=1*10^(3)// Choosing value of R1
disp("R1= "+string(R1)+ " ohm")  // Resistor at input side of OP-AMP
RF=R1*[10^(Av/20)-1] // Using formulae Av=20*log(1+RF/R1)
disp("RF=R1*[10^(Av/20)-1]= "+string(RF)+ " ohm")  // Calculated Feedback resistance
//NOTE: Correct value of RF=62095.734 ohm or 62.095 kilo ohm but in book given as 62.24 kilo ohm 
 
