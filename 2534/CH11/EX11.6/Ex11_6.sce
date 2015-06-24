//Ex11_6
clc
VCC = 20//collector voltage
RL = 10//load resistance
disp("VCC = "+string(VCC)+"V")
disp("RL = "+string(RL)+"ohm")
Pi_dc = (VCC^2)/(RL)//input power
disp("Pi(dc) = (VCC^2)/(RL) = "+string(Pi_dc)+"W")
Po_ac = (VCC^2)/(2*RL)//output power
disp("Po_ac = (VCC^2)/(2*RL) = "+string(Po_ac)+"W")
eta = Po_ac/Pi_dc//efficiency
disp("eta = Po_ac/Pi_dc = "+string(eta*100)+"%")


// note : has modifed variables:
//        using Po_ac instead of Po(ac)
//        and   Pi_dc instead of Pi(dc).

