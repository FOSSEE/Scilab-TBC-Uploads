clear all; clc;

disp("Scilab Code Ex 4.16 : ")

//Given:
yield = 250; //MPa
r = 4; //mm
width = 40; //mm
thick = 2; //mm

//a)
r_h = r/(width - (2*r));
w_h = width/(width - (2*r));
K = 1.75;
area = (thick*(width - (2*r))*10^-6);
P_y = (yield*10^6*area)/K;
P_y = P_y/1000;

//b)
P_p = (yield*10^6*area);
P_p = P_p/1000;

//Display:

printf("\n\nThe maximum load P that does not cause the steel to yield     = %1.2f kN",P_y);
printf('\nThe maximum load that the bar can support                     = %1.2f kN',P_p);

//-------------------------------------------------------------------------END----------------------------------------------------------------------
