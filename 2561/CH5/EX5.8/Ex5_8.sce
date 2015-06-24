//Ex5_8
clc
tp=10*10^(-3)
disp("tp= "+string(tp)+" s") // Time period of pulse
tr=0.05*10^(-6)
disp("tr= "+string(tr)+" s") // Rise-Time of pulse
CSH=50*10^(-12)
disp("CSH= "+string(CSH)+ " farad")  //output capacitor
tilt=5
disp("percentage tilt= "+string(tilt)+ "%")  //Sag or percentage tilt of output 
Ri=100*10^(3)
disp("Ri= "+string(Ri)+ " ohm")  // source resistance
RL=tr/(2.2*CSH)
disp("RL=tr/(2.2*CSH)= "+string(RL)+ " ohm")  //Load resistance calculation
Cc=(tp*100)/(tilt*Ri)
disp("Cc= (tp*100)/( tilt*Ri)="+string(Cc)+ " farad")  //capacitance
//ERROR NOTE: calculated value of RL=454.54545 ohm but in book given as 455 ohm  
