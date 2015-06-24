//Example 4.11
clc
disp("P = 12,  N_s = 600 r.p.m")
f=(12*600)/120
format(3)
disp(f,"Therefore,  f(in Hz) = P*N_s/120 =")
disp("(i) Average value of e.m.f in a conductor = 2*f*phi")
rms=1.11*2*60*0.05
format(5)
disp(rms,"Therefore,  r.m.s value(in V) = 1.11*2*f*phi =")
disp("(ii) Average value of e.m.f in a turn = 4*f*phi")
disp("As 2 conductors joined properly form a turn")
rms=1.11*4*60*0.05
format(6)
disp(rms,"Therefore,  r.m.s value(in V) = 1.11*4*f*phi =")
disp("(iii) Now each slot has 10 conductors and 2 coil sides. So,")
c=10/2
disp(c,"conductors/coil side = 10/2 =")
disp("Such coil sides are connected to another coil sides to form a coil. So in a coil there are 5 turns as shown in fig.4.43")
rmss=13.32*5
format(5)
disp(rmss,"Therefore,  R.M.S value of e.m.f in a coil(in V) = R.M.S value of e.m.f/turn * Number of turns/coil =")
disp("(iv) Now total conductors  Z = conductors/slots * Number of slots")
z=10*180
disp(z,"Therefore,  Z =")
zph=1800/3
disp(zph,"Therefore,  Z_ph = Z/3 =")
tph=600/2
disp(tph,"T_ph = Z_ph/2 =")
n=180/12
disp(n,"And  n = slots/pole =")
m=15/3
disp(m,"m = n/3 =")
beta=180/15
disp(beta,"beta(in degree) =")
kd=sind(30)/(5*sind(6))
format(7)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
disp("E_ph = R.M.S value per turn*T_ph*K_d*K_c")
ep=13.32*300*0.9566*1
format(8)
disp(ep,"Therefore,  E_ph(in V) =")
disp("or  E_ph = 4.44*K_c*K_d*phi*f*T_ph")
eph=4.44*0.9566*0.05*60*300
format(8)
disp(eph,"Therefore,  E_ph(in V) =")
