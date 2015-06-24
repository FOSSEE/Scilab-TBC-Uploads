//example7.17
clc
disp("Given: E_s=30 V, R_f=2 ohm, R_s=8 ohm, R_L=1 k-ohm")
disp("E_s=E_RMS=30 V")
e=30*sqrt(2)
disp(7)
disp(e,"E_sm(in V)=(E_s)*sqrt(2)=")
i=(30*sqrt(2))/(2+1000+8)
format(6)
disp(i,"I_m(in A)=(E_sm)/(R_f+R_L+R_s)=")
i=(2*42)/(%pi)
format(6)
disp(i,"I_DC(in mA)=(2*I_m)/pi=")
p=1000*(26.74*10^-3)^2
disp(p,"a) Power delivered to the load = (I_DC^2)*(R_L) = ")
v=(2*30*sqrt(2))/(%pi)
format(3)
disp(v,"V_DC, no load = (2*E_sm)/pi = ")
v=26.74*1000*10^-3
format(6)
disp(v,"V_DC, full load (in V) = (I_DC)*R_L = ")
r=((27-26.74))/26.74
format(5)
disp(r,"% Regulation = ((V_NL-V_FL)*100)/(V_FL)= ")
e=(8/(%pi)^2)*(1/(1+(10/1000)))
format(6)
disp(e,"c) Efficiency of rectification = dc output/ac output =")
t=(30*42*10^-3)/sqrt(2)
format(5)
disp(t,"d) Transformer secondary rating(in W) = (E_RMS)*(I_RMS) = ")
u=0.715/0.89
disp(u,"TUF = DC power output/AC rating = ")
