clc
R=10;               //Assigning values to parameters
L=0.014;
C=100*10^-6;
wr=1/sqrt(L*C);
Q=(1/R)*(sqrt(L/C));
BW=R/L;
w1=wr-BW/2;
w2=wr+BW/2;
Vm=1;
V=1/sqrt(2);
Vc=(V/R)*sqrt(L/C);
disp("rad/sec",wr,"Resonant frequency");
disp(Q,"Quality factor");
disp("rad/sec",BW,"Bandwidth");
disp("rad/sec",w1,"Lower frequency");
disp("rad/sec",w2,"Upper frequency");
disp("Volts",Vc,"Maximum value of voltage across capacitor");