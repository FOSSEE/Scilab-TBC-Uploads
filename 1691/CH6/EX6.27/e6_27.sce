//example6.27
clc
disp("From the fig 6.50 we can write,")
disp("V_CC=20V and R_L=12 ohm")
disp("i) The maximum ac power that can be delivered to the load is,")
p=(20^2)/24
disp(p,"(P_ac)_max[in W]= ")
disp("Let new power delivered to load be (P_ac)''.")
disp("The corresponding new supply voltage be (V''_cc)")
disp("(P_ac)''[in W]=1.36(P_ac)_max     ..36% more")
p=1.36*16.67
disp(p,"= 1.36*16.67=")
disp("And (P_ac)''=(V''_cc^2)/R_L")
disp("Therefore 22.67=(V''_cc^2)/(2*12)")
v=sqrt(544.1088)
disp(v,"V''_cc(in V)=")
disp("Hence the percentage increase in supply voltage is,")
p=(23.326-20)/0.2
disp(p,"= ((V''_cc-V_cc)*100)/V_cc= ")
disp("The mimimum breakdown voltage per transistor this condition is,")
v=2*23.326
disp(v,"=2*V''_cc=2*23.326=")
