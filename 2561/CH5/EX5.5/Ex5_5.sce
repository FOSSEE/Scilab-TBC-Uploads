//Ex5_5
clc
RL=5*10^(3)
disp("RL= "+string(RL)+ " ohm")  //Load resistance
Cc=0.1*10^(-6)
disp("Cc= "+string(Cc)+ " farad")  //capacitance
Ri=100*10^(3)
disp("Ri= "+string(Ri)+ " ohm")  //  input resistance for Amplifier
CSH=100*10^(-12)
disp("CSH= "+string(CSH)+ " farad")  //shunt load capacitance
Avm=100
disp("Avm="+string(Avm)) // Mid-frequency gain 
fL=1/[2*(%pi)*(Ri)*(Cc)]
disp("fL=1/[2*(%pi)*(Ri)*(Cc)]= "+string(fL)+ "Hz ") // Lower cutoff-frequency 
fH=1/[2*(%pi)*(RL)*(CSH)]
disp("fH=1/[2*(%pi)*(RL)*(CSH)]= "+string(fH)+ " Hz") // Higher cutoff-frequency 
BW=fH-fL
disp("BW=fH-fL= "+string(BW)+ " Hz") // Bandwidth
fT=Avm*fH
disp("fT=Avm*fH= "+string(fT)+ " Hz") // Unity gain bandwidth
// ERROR NOTE: calculated value of lower cutoff frequency, fL= 15.915494 Hz but in book given as 15.0 Hz   
 
