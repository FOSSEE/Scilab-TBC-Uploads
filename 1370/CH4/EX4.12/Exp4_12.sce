//Example 4.12
clc
disp("P = 6,  f = 50 Hz,  n = 12 slots/pole, 4 conductors/slot")
disp("For full pitch,  n = 12 slots/pole")
ap=60/6
format(4)
disp(ap,"Actual pitch of winding(in slots) = 5/6 * n =")
ws=12-10
disp(ws,"so winding shorted by(in slots) =")
disp("Therefore,  alpha = short pitch angle = 2 slot angle = 2*beta")
beta=180/12
disp(beta,"beta(in degree) =")
alp=2*15
disp(alp,"Therefore,  alpha(in degree) = 2*beta =")
kc=cosd(15)
format(7)
disp(kc,"Therefore,  K_c = cos(alpha/2) =")
m=12/3
disp(m,"m(in slots/pole/phase) = n/3 =")
kd=sind(30)/(4*sind(7.5))
format(8)
disp(kd,"Therefore,  K_d = sin(m*beta/2) / m*sin(beta/2) =")
ts=12*6
disp(ts,"Total slots = n*P =")
z=72*4
disp(z,"Therefore,  Z = total conductors =")
zph=288/3
disp(zph,"Therefore,  Z_ph = Z/3 =")
tph=96/2
disp(tph,"T_ph = Z_ph/2 =")
disp("Therefore,  E_ph = 4.44*K_c*K_d*phi*f*T_ph")
eph=(4.44*0.9659*0.95766*1.5*50*48)*10^-3
format(8)
disp(eph,"Therefore,  E_ph(in kV) =")
el=sqrt(3)*14.7852
disp(el,"Therefore,  E_line(in kV) = sqrt(3)*E_ph =")
