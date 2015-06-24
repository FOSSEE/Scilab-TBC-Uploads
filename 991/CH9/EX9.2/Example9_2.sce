//Example 9.2.
clc
RC=2*10^3
hie=1300
hre=2*10^-4
hfe=55
hoe=22*10^-6
disp("(i) For RE = 200 ohm,")
format(7)
RE=200
x=hoe*(RE+RC)
disp(x,"      hoe*(RE + RC) =")
disp("Since hoe*(RE+RC) < 0.1, the approximate model is permissible.")
format(6)
AI=-hfe
disp("      AI = -hfe = -55")
Ri=hie+((1+hfe)*RE)
x1=Ri*10^-3
disp(x1,"      Ri(k-ohm) = hie + (1+hfe)*RE =")
Av=AI*(RC/Ri)
disp(Av,"      Av = AI * (RC/Ri) =")
disp("Output resistance, Ro = infinity")
disp("Output terminal resistance, RoT = Ro || RC = 2 k-ohm")
disp("(ii) For RE = 400 ohm")
format(7)
RE=400
x2=hoe*(RE+RC)
disp(x2,"      hoe*(RE + RC) =")
disp("Since hoe*(RE+RC) < 0.1, the approximate model is permissible.")
format(6)
AI=-hfe
disp("      AI = -hfe = -55")
Ri=hie+((1+hfe)*RE)
x3=Ri*10^-3
disp(x3,"      Ri(k-ohm) = hie + (1+hfe)*RE =")
format(5)
Av=AI*(RC/Ri)
disp(Av,"      Av = AI * (RC/Ri) =")
disp("Output resistance, Ro = infinity")
disp("Output terminal resistance, RoT = Ro || RC = 2 k-ohm")
disp("(iii) For RE = 1000 ohm")
disp("Since hoe*(RE+RC) < 0.1, the approximate model is permissible.")
format(6)
AI=-hfe
disp("      AI = -hfe = -55")
Ri=1300+((1+55)*1000)
x3=Ri*10^-3
disp(x3,"      Ri(k-ohm) = hie + (1+hfe)*RE =")
Av=AI*(RC/Ri)
disp(Av,"      Av = AI * (RC/Ri) =")
disp("Output resistance, Ro = infinity")
disp("Output terminal resistance, RoT = Ro || RC = 2 k-ohm")