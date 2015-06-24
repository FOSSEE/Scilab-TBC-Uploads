//Example 10.2.
clc
format(6)
hfe=50
hie=1200
hoe=30*10^-6
hre=2.5*10^-4
RC=5*10^3
C=160*10^-12
CC=6*10^-6
R1=100*10^3
R2=10*10^3
gm=50*10^-3
Ro=1/hoe
x1=(Ro*10^-3)
disp(x1,"Ro(k-ohm) = 1/hoe =")
format(4)
RB=(R1*R2)/(R1+R2)
x2=RB*10^-3
disp(x2,"RB(k-ohm) = R1 || R2 =")
Ri=hie
x3=Ri*10^-3
disp(x3,"Ri(k-ohm) = hie =")
format(5)
R_C=(RC*Ro)/(RC+Ro)
x4=R_C*10^-3
disp(x4,"RC''(k-ohm) = RC || Ro =")
format(4)
R_i=(RB*Ri)/(RB+Ri)
x6=R_i*10^-3
disp(x6,"Ri''(k-ohm) = RB || Ri =")
format(5)
R_ci=(R_C*R_i)/(R_C+R_i)
x7=R_ci*10^-3
disp(x7,"Rci'' = Rc'' || Ri'' =")
rbe=hfe/gm
disp(rbe,"rbe(ohm) = hfe / gm =")
disp("(a) Mid-band current gain,")
AIm=(-50*4.35*10^3)/((4.35*10^3)+(1.1*10^3))
disp(AIm,"AIm = (-hfe*R''C) / (RC''+Ri'') =")
disp("(b) Mid-band voltage gain,")
format(6)
AVm=(-50)*((0.87*10^3)/(1.2*10^3))
disp(AVm,"AVm = (-hfe) * (Rcid/hie) =")
disp("(c) Lower 3dB frequency,")
format(5)
fL=1/(2*%pi*6*10^-6*(5.45*10^3))
disp(fL,"fL(Hz) = 1 / (2*%pi*CC*(R_C+R_i)) =")
disp("Higher 3dB frequency,")
format(6)
fH=1/(2*%pi*C*rbe)
x8=fH*10^-3
disp(x8,"fH(kHz) = 1 / (2*%pi*C*rbe) =")  // answer in textbook is wrong 
disp("(d) Voltage gain x bandwidth")
y=abs(AVm*fH)
x9=(y*10^-6)
disp(x9,"|AVmfH| =")