//example9.18
clc
disp("l=2 cm, d=5 mm, L=30 cm, V_a=2000 V, D=3 cm")
disp("D=(l*L*V_d)/(2*d*V_a)")
disp("i.e.  (3*10^-2)=((2*10^-2)*(30*10^-2)*(V_d))/((2*5*10^-3)*2000)")
v=((3*10^-2)*(2*5*10^-3)*2000)/((2*10^-2)*(30*10^-2))
disp(v,"Therefore, V_d(in V)=")
disp("But it is applied through amplifier of gain 100")
g=100/100
disp(g,"Therefore, Input voltage required = (V_d)/gain = 100/100 =")
