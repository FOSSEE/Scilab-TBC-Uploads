clear;
clc;
V=1000;
fos=2.5;    //factor of safety
I_TAV=40;
disp("for mid pt convertor");
V_m=V/(2*fos);
P=(2*V_m/%pi)*I_TAV;    printf("power handled=%.3f kW",P/1000);
disp("for bridge convertor");
V_m=V/(fos);
P=(2*V_m/%pi)*I_TAV;    printf("power handled=%.3f kW",P/1000);
