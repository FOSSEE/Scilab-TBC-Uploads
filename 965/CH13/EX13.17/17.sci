clc;
clear all;
disp("time for evaporation")
A=1;
T=25+273;
L=6/1000;//m
G=8314;// gas constant
p=1;// bar
D=0.25*10^(-4);//m^2/s
Mw=18;
W=1.8*10^(-3);
pw1=0.03169;// bar

//W=0.622*pw2/(p-pw2);
pw2=p/(0.622/W+1)

mw=(D*A*Mw*p*10^5/(G*T*L))*log((p-pw2)/(p-pw1));
disp("kg/m^2",mw,"diffusion rate of gaseous mixture =")
d=1.2/1000;//m
M=A*d*1000;//kg
t=M/mw;
disp("h",t/3600,"time required =")





