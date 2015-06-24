//Example 4.15
clc
disp("V_ph = 550 V, 55 kVA,  R_a = 0.2 ohm")
disp("I_f = 10 A,  I_ssc = 200 A,  V_oc = 450 V")
za=450/200
format(5)
disp(za,"Therefore,  Z_s(in ohm) = V_oc / I_ssc |same I_f =")
xs=sqrt((2.25^2)-(0.2^2))
format(7)
disp(xs,"(a)  X_s(in ohm) = sqrt(Z_a^2 - R_a^2) =")
iph=(55*10^3)/550
disp("VA = V_ph*I_ph           ...As single phase")
disp(iph,"Therefore,  I_ph(in A) = I_a =        ...Full load armature current")
disp("(b) cos(phi) = 0.8 lagging,  sin(phi) = 0.6")
ephi=sqrt(((((550*0.8)+(100*0.2))^2)+(((550*0.6)+(100*2.2411))^2)))
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*R_a)^2")
format(9)
disp(ephi,"E_ph(in V) =")
r=((720.1652-550)/550)*100
format(6)
disp(r,"Therefore,  %R = (E_ph-V_ph / V_ph)*100 = ")
