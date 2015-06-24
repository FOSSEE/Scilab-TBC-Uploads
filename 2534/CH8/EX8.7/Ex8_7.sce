//Ex8_7
clc
RL = 1.2*10^3
//assuming Rs = RL as given in problem
Rs = RL
//assuming values for h-parameters
hie = 1.0*10^3
hre=2.5*10^-4
hfe = 50
hoe = 25*10^-6
disp("RL = "+string(RL)+"ohm")//load resistance
disp("Rs = RL = "+string(RL)+"ohm")//source resistance
//h-parameters for CE transistor amplifier are as follows:
disp("hie = "+string(hie)+"ohm")//input resistance of CE transistor
disp("hre = "+string(hre))//voltage gain of CE transistor
disp("hfe = "+string(hfe))//current gain of CE transistor
disp("hoe = "+string(hoe)+"mho")//output conductance of CE transistor
//calculation for current gain:
Ai=-hfe/(1+(hoe*RL))
disp("Ai = -hfe/(1+(hoe*RL)) = "+string(Ai))
//calculation for input impedence:
Ri = hie+(hre*Ai*RL)
disp("Ri = hie+(hre*Ai*RL) = "+string(Ri)+"ohm")
//calculation for voltage gain:
disp("Av = Ai*RL/Ri")
Av = Ai*RL/Ri
disp("   = "+string(Av))
//calculation for output impedence:
Ro = 1/((hoe - (hfe*hre)/(hie+Rs)))
disp("Ro = 1/((hoe - (hfe*hre)/(hie+Rs)))")
disp("     = "+string(Ro)+"ohm")
//current gain with source impedence:
Ais=(Ai*Rs)/(Ri+Rs)
disp("Ais = (Ai*Rs)/(Ri+Rs)= "+string(Ais))
//voltage gain with source impedence:
Avs = Av*Ri/(Ri+Rs)
disp("Avs = Av*Ri/(Ri+Rs) = "+string(Avs))



// NOTE : calculation in the textbook for the above problem is wrong.
//        while calculating Ri author has use "hie = 1.2*10^3" instead of ASSUMED9 value i.e., "hie = 1.0*10^3"   
