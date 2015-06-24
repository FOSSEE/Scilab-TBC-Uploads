clc;
clear;

//x(t)=2 over an interval of (-2,2)

disp("the energy of the signal (in J)is");
 Ex=(integrate('4','x',-2,2)); // energy content of the signal
disp(Ex);
