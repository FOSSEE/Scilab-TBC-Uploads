//Example 14.6.
clc
format(6)
Ai=1+80
disp(Ai,"  Ai = 1 + hfe =")
Ri=(5*10^3)+((1+80)*(2*10^3))  //in ohm
x1=Ri*10^-3 //in k-ohm
disp(x1,"  Ri(k-ohm) = hie + (1+hfe)*RL =")
Av=(81*2*10^3)/(167*10^3)
disp(Av,"  Av = Ai*RL / Ri =")
Ro=(5000+600)/(1+80) // in ohm
disp(Ro,"  Ro(ohm) = hie+Rs / 1+hfe =")
Rof=(69.13*2000)/(2069.13)  //in ohm
disp(Rof,"  Rof(ohm) = Ro || RL =")