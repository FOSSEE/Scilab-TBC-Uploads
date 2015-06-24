//Example 11.4
clc
RS=600
hie=1*10^3
hfe=60
R1=5*10^3
R2=1.25*10^3
RCE=25
f1=125
disp("The lower 3 dB frequency, f1 = 1 / (2*pi*(RS+R1dash)*CC)")
format(5)
R1dash=(R1*R2*hie)/((R2*hie)+(R1*hie)+(R1*R2))
CC=1 / (2*%pi*f1*(RS+R1dash))
x1=CC*10^6
disp(R1dash,"(a)    R1''(ohm) = R1 || R2 || hie =")
disp(x1,"       CC(uF) = 1 / (2*pi*f1*(RS+R1'')) =")
x2=hie+((1+hfe)*RCE)
R1dash=(R1*R2*x2)/((R2*x2)+(R1*x2)+(R1*R2))
CC=1 / (2*%pi*f1*(RS+R1dash))
x3=CC*10^6
format(7)
disp(R1dash,"(b)    R1''(ohm) = R1 || R2 || [hie+((1+hfe)*RCE)] =")
format(5)
disp(x3,"       CC(uF) = 1 / (2*pi*f1*(RS+R1'')) =")