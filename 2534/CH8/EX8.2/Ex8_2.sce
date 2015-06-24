//Ex8_2
clc
RL = 8*10^3
hie=1.0*10^3
hre=2.5*10^-4
hfe=50
hoe=25*10^-6
disp("RL = "+string(RL)+"ohm")//load resistance
//h-parameters for CE transistor amplifier are as follows:
disp("hie = "+string(hie)+"ohm")//input resistance of CE transistor
disp("hre = "+string(hre))//voltage gain of CE transistor
disp("hfe = "+string(hfe))//current gain of CE transistor
disp("hoe = "+string(hoe)+"mho")//output conductance of CE transistor
//calculation for current gain:
Ai=-hfe/(1+(hoe*RL))
disp("Ai = -hfe/(1+(hoe*RL)) = "+string(Ai))
disp("Ai = "+string(abs(Ai)))
//calculation for input resistance:
Ri = hie+(hre*Ai*RL)
disp("Ri = hie+(hre*Ai*RL) = "+string(Ri)+"ohm")

//note : answer in the textbook regarding above problem is not accuratly calculated.
