//Exmaple 4.10
clc
disp("N_s = 250 r.p.m.,  f = 50 Hz")
disp("slots = 288,  E_line = 6600 V")
disp("N_s = 120*f/P")
p=(120*50)/250
format(3)
disp(p,"Therefore,  P =")
n=288/24
disp(n,"n = slots/pole =")
m=12/3
disp(m,"m = n/2 =")
beta=180/12
disp(beta,"beta = 180/n =")
kd=sind(30)/(4*sind(7.5))
format(7)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
disp("Now coil is short pitched by 2 slots")
al=2*15
disp(al,"Therefore,  alpha = angle of short pitch = 2 * beta =")
kc=cosd(15)
disp(kc,"Therefore,  K_c = cos(alpha/2) =")
disp("Each coil consists of 16 turns, i.e. in a slot each coil side consists of 16 conductors as shown in the fig.4.42 and in each slot there are 2 coil sides. So each slot consists of 16 per coil side x 2 i.e. 32 conductors.")
disp("Therefore,  conductors/slot = 32")
disp("Therefore,  total conductors = slots x conductors/slot")
z=288*32
format(5)
disp(z,"Therefore,  Z =")
zp=9216/3
disp(zp,"Therefore,  Z_ph = conductors/phase =")
tp=3072/2
disp(tp,"Therefore,  T_ph = Z_ph/2 =               ... 2 conductors -> 1 turn")
ep=6600/sqrt(3)
format(8)
disp(ep,"Now  E_ph(in V) = E_line / sqrt(3) =")
disp("E_ph = 4.44*K_c*K_d*phi*f*T_ph")
phi=(3810.51/(4.44*0.9659*0.9576*50*1536))*10^3
format(3)
disp(phi,"Therefore,  phi(in mWb) =")
