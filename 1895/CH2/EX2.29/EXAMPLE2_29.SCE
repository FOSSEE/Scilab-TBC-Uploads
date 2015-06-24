//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.29(PAGENO 118)");

//given
k = 2*10^-3//constants in amperes/square volts
k_1 = 0.2*10^-3//constant in amperes/square volts
printf("\n\nwe know that V_i(t) = cos(w_c*t) + .5*cos(w_m*t)");
printf("given i_0 = 10 + k*V_i + k_1*V_i^2 ");
printf("\n\ntherefore i_0 = 10 + 2*10^-3*[cos(w_c*t) + .5*cos(w_m*t)] + 2*10^-3*[cos(w_c*t) + .5*cos(w_m*t)]");
printf("\n\ni_0 = 2*10^-3*cos(w_c*t) + ((.2*10^-3)/.5)*.5*cos(w_c*t)*cos(w_m*t)");
//Now the modultion depth will be
m = (.2*10^-3)/.5;

//result
printf("\n\nModulation depth = %.8f ",m);
