//Ex8_3
clc
RL = 8*10^3
Rs= 500
hie=1.0*10^3
hre=2.5*10^-4
hfe=50
hoe=25*10^-6
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Rs = "+string(Rs)+"ohm")//source resistance
//h-parameters for CE transistor amplifier are as follows:
disp("hie = "+string(hie)+"ohm")//input resistance of CE transistor
disp("hre = "+string(hre))//voltage gain of CE transistor
disp("hfe = "+string(hfe))//current gain of CE transistor
disp("hoe = "+string(hoe)+"mho")//output conductance of CE transistor

Ai=-hfe/(1+(hoe*RL))
disp("Ai = -hfe/(1+(hoe*RL)) = "+string(Ai))//calculation for current gain

Ri = hie+(hre*Ai*RL)
disp("Ri = hie+(hre*Ai*RL) = "+string(Ri)+"ohm")//calculation for input resistance

Ais=(Ai*Rs)/(Ri+Rs)
disp("Ais = (Ai*Rs)/(Ri+Rs)= "+string(Ais))//current gain with source resistance

Avs = Ai*RL/Ri
disp("Avs = Ai*RL/Ri = "+string(Avs))//voltage gain with source resistance

//note : in the textbook above problem has given two values for hie BUT no value for hfe ... 
//       thus assuming hie=50 as hfe =50, as given in the previous example 8_2

//note : answer in the textbook is not accuratly calculated.
