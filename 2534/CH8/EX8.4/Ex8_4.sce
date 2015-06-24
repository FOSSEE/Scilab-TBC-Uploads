//Ex8_4
clc
RL=5*10^3
Rs=1.2*10^3
hre=2.5*10^-4
hie=1.1*10^3
hfe=100
hoe=25*10^-6
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Rs = "+string(Rs)+"ohm")//source resistance
//h-parameters for CE transistor amplifier are as follows:
disp("hie = "+string(hie)+"ohm")//input resistance of CE transistor
disp("hre = "+string(hre))//voltage gain of CE transistor
disp("hfe = "+string(hfe))//current gain of CE transistor
disp("hoe = "+string(hoe)+"mho")//output conductance of CE transistor
//calculation for current gain:
Ai=-hfe/(1+(hoe*RL))
disp("Ai = -hfe/(1+(hoe*RL)) = "+string(abs(Ai)))
//calculation for input resistance:
Ri = hie+(hre*Ai*RL)
disp("Ri = hie+(hre*Ai*RL) = "+string(Ri)+"ohm")
//calculation for voltage gain:
Av = Ai*RL/Ri
disp("Av = Ai*RL/Ri = "+string(Av))
//calculation for output resistance:
Go=hoe-((hre*hfe)/(hie+Rs))
Ro = 1/Go
disp("Ro = 1/Go")
disp("Go = hoe-((hre*hfe)/(hie+Rs)) = "+string(Go)+"mho")
disp("Ro = "+string(Ro)+"ohm")

//note : in the textbook, above problem has given two values for "hfe" and no value for "hre"... 
//        thus assuming value for "hre = 2.5*10^-4" as taken in previous example 8_2
//        and "hfe=100" 

//note : in text LOAD RESISTANCE is noted as Rc in question, but RL in solution.
//       I have work with Load Resistance with notification RL.
