//example2.5
clc
disp("Consider the series generator as shown in fig 2.31")
disp("R_a=0.5 ohm     and    R_se=0.03 ohm")
disp("V_brush=2 V")
disp("N=1500 rpm")
disp("Total coils are 540 with 6 turns/coil.")
t=540*6
disp(t,"Therefore,    Total turns =540*6=")
disp("Total conductors Z= 2* turns")
z=2*3240
disp(z,"z=2*3240=")
disp("Therefore,    E=(psi*P*N*Z)/(60*A)")
disp("For lap type, A=P")
disp("psi=2 mWb=2*10^-3 Wb")
e=(1500*6480*2*10^-3)/60
disp(e,"Therefore,    E(in V)=")
disp("E=(V_t)+(I_a)[(R_a)+(R_sc)]+(V_brush)     ..Total V_brush given")
disp("Where,    I_a=I_L=50 A")
disp("324=(V_t)+50(0.5+0.03)+2")
v=322-(50*(0.53))
disp(v,"V_t(in V)=")
