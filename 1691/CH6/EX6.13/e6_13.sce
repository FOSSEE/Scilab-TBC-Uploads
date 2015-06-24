//example6.13
clc
disp("V_CC=10V ,R_L=5 ohm")
p=100/10
disp(p,"i) (P_ac)_max[in W]= (V_CC^2)/(2*R_L)=(10^2)/(2*5)=")
disp("ii) To decide Power rating of transistors means to find (P_D)_max")
v=(2*10)/(%pi)
disp(v,"V_m(in V)=")
disp("Now, R_L=(V_m)/(I_m)")
i=6.3662/5 
disp(i,"Therefore (I_m)[in A]=")
disp("Therefore (P_DC)=(V_CC)*(I_DC)=(V_CC)*(2*I_m)/pi    (I_DC)=(2*I_m)/pi")
p=(10*2*1.2732)/(%pi)
disp(p," =(10*2*1.2732)/(pi) =")
p=(6.3662*1.2732)/2
disp(p,"and  (P_ac)[in W]=(V_m*I_m)/2=")
p=8.1056-4.5027
disp(p,"(P_D)_max[in W]= (P_DC)-(P_ac)=")
p=4.0528/2
disp(p,"Therefore P_D rating fora each transistor =(P_D)_max/2=")
disp("iii) For (P_ac)_max, V_m=V_CC=10 V")
i=10/5
disp(i,"I_m(in A)=(V_m)/R_L=")
p=(10*2*2)/%pi
disp(p,"P_DC(in W)=")
