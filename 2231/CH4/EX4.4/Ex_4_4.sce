//Example 4_4
clc;
clear;close;

//Given data: 
V=200;//V
RL=8;//ohm
Vthy=2;//V
f=800;//Hz
alfa=0.4;//duty cycle

//Solution :
Vav=alfa*(V-Vthy);//V
disp(Vav,"(a) Average output voltage(V)");
VL=sqrt(alfa)*(V-Vthy);//V
disp(VL,"(b) RMS output voltage(V)");
Pout=VL^2/RL;//W
Pin=alfa*V*(V-Vthy)/RL;//W
Eff=Pout/Pin*100;//%
disp(Eff,"(c) Chopper efficiency(%)");
Rin=RL/alfa;//ohm
disp(Rin,"(d) Input resistance(ohm)");
V1=(V-Vthy)*sqrt(2)/%pi;//V
disp(V1,"(e) RMS value of fundamental component(V)");
