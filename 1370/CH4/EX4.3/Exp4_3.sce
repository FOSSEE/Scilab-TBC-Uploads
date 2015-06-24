//Example 4.3
clc
disp("Ns = 250 r.p.m,  f = 50 Hz")
disp("Ns = 120f / P")
p=(120*50)/250
disp(p,"Therefore,  P = ")
n=216/24
format(3)
disp(n,"n = slots/pole =")
m=9/3
disp(m,"m = n/3 =")
beta=180/9
disp(beta,"beta(in degree) = 180/n =")
kd=(sind(30)/(3*sind(10)))
format(6)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
disp("K_c = 1 as full pitch coils.")
z=216*5
format(8)
disp(z,"Total number of conductors Z = ")
zph=1080/3
disp(zph,"Therefore,  Z_ph = Z/3 =")
tph=360/2
disp(tph,"Therefore,  T_ph = Z_ph/2 =            ... 2 conductors constitute 1 turn")
eph=4.44*0.9597*30*50*180*10^-3
format(8)
disp(eph,"E_ph(in V) = 4.44*Kc*Kd*f*phi*T_ph =")
el=sqrt(3)*1150.48
disp(el,"E_line(in V) = sqrt(3)*E_ph =           ...star connection")
