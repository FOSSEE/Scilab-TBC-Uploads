//Determine the probability that the signal exceeds the receiver senstivity

Smin = 100;
Pr = -110;

Ps =  0.5 - 0.5*((Pr + Smin)/(10*1.414));

disp(Ps, 'Probability that the signal exceeds the receiver senstivity is')