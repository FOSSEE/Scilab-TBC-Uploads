//Example 4.16
clc
disp("V_ph = 2200 V,  f = 50 Hz, 440 kVA,  R_a = 0.5 ohm")
disp("I_aph = 200 A = I_ac,  V_oc = 1160 V,  I_f = 40 A")
za=1160/200
format(4)
disp(za,"(a)  Z_s(in ohm) = V_oc/I_ssc |same I_f =")
xs=sqrt((5.8^2)-(0.5^2))
format(7)
disp(xs,"(b)  X_s(in ohm) = sqrt(Z_a^2 - R_a^2) =")
disp("(c)  cos(phi) = 0.707 leading,  sin(phi) = 0.707")
ephi=sqrt(((((2200*0.707)+(200*0.5))^2)+(((2200*0.707)-(200*5.7784))^2)))
disp("Therefore,  E_ph^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)-I_a*R_a)^2")
format(10)
disp(ephi,"E_ph(in V) =")
r=((1702.9754-2200)/2200)*100
format(7)
disp(r,"Therefore,  %R(in percentage) = (E_ph-V_ph / V_ph)*100 = ")
