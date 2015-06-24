clc;
clear;

P_1=0.3; //P( 1 is transmitted)
Pe_1=10^(-3); //P(detecting an error when 1 is transmitted)
P_0=0.7;//P( 0 is transmitted)
Pe_0=10^(-7); //P(detecting an error when 0 is transmitted)

error_prob=P_1*Pe_1+P_0*Pe_0;

disp(error_prob,"Error Probabillity of the channel");
