//Caption: Find possible voltage ratio and output for connections (a)BC=11500V,AC=2300V (b)BC=2300V,AC=11500V
//Exa:3.3
clc;
clear;
close;
V_1=11500//Voltage on primary side(in volts)
V_2=2300//Voltage on secondary side(in volts)
P_o=100000//Rated output(in VA)
V=V_1+V_2
v=V/V_1
I_1=P_o/V_1
I_2=P_o/V_2
I=I_1+I_2
W_o=(V_1*I)/1000
Cu=1-(V_1/V)//(a)Ratio of weight of copper
disp(W_o,v,'(a)Voltage ratio and output(in KVA)=')
w_o=(V_2*I)/(1000)
cu=1-(V_2/v)//(b)Ratio of weight of copper
disp(w_o,v,'(b)Voltage ratio and output(in KVA)=')