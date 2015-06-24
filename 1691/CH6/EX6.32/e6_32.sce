//example6.32
clc
disp("When no signal is applied, current drawn is")
disp("I_CQ =200mA from V_cc= 10V")
p=10*200*10^-3
disp("P_DC(in W)=V_CC*I_CQ=")
disp("For maximum power output,")
disp("V_1m=V_cc=10V and I_1m=I_CQ=200mA")
p=2/2
disp(p,"P_ac(in W)=(V_1rms*I_1rms)=(V_1m*I_1m)/2=(10*200*10^-3)/2=")
disp("i) P_ac(max)=Maximum output power =1W")
n=100/2
disp(n,"ii) %eta=(P_ac*100)/(P_DC)=")
disp("P_d(max)=V_cc*I_CQ= 2W")
disp("The power dissipation rating of the transistor must be higher than 2W")
r=10/(200^10^-3)
disp(r,"Now  R''_L(in ohm)=(V_1m)/(I_1m)=")
n=1/5
disp(n,"Now R_L=2 ohm and n =N2/N1=1/5=")
r=2/(0.2^2)
disp(r,"R''_L(in ohm)=(R_L)/n^2=")
disp("As R''_L required matches with the R''_L of the circuit, impedance matching is perfect")
