Vm = 2; // assumption 
//average value of the function 
//v(t) = Vm*alpha/(%pi/3) for 0 <= alpha <= %pi/3
//     = Vm   for  %pi/3 <= alpha <= %pi/2
Vav = (2/%pi)*integrate('Vm*alpha*(3/%pi)','alpha',0,%pi/3) + (2/%pi)*integrate('Vm*alpha/alpha','alpha',%pi/3,%pi/2);
disp(Vav)