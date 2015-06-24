//Example 11.3.
clc
hfe=400
hie=10*10^3
Rs=600
RL=5*10^3
RE=1*10^3
VCC=12
R1=15*10^3
R2=2.2*10^3
CE=50*10^-6
format(8)
RB=(R1*R2)/(R1+R2)
Av=(-hfe*RL)/(Rs+hie+((hie*Rs)/RB))
disp(Av,"AV(MF) = (-hfe*RL) / (RS + hie + ((hie*RS)/RB)) =")
disp("Lower 3-dB point,")
format(4)
f1=(1+hfe)/((Rs+hie)*2*%pi*CE)
disp(f1,"f1 = (1+hfe) / ((RS+hie)*2*%pi*CE) =")