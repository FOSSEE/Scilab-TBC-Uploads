//Ex11_2
clc
Po_ac = 64//output power
eta = 0.3//efficiency
Pi_dc = Po_ac/eta//input power
disp("Po_ac = "+string(Po_ac)+"W")
disp("eta = "+string(eta))
disp("Pi_dc = Po_ac/eta = "+string(Pi_dc)+"W")
power_losses = Pi_dc - Po_ac//power losses
disp("Power losses = Pi_dc - Po_ac = "+string(power_losses)+"W")

// note : has modifed variables:
//        using Po_ac instead of Po(ac)
//        and   Pi_dc instead of Pi(dc).
