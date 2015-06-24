//Example 14.7. refer fig.14.6
clc
format(6)
RL=((40*2)/42)*10^3 //in ohm
disp(RL,"  R''L(ohm) = RB || RL =")
Av=(-80*1905)/5000
disp(Av,"  Av = -hfe*R''L / hie =")
format(9)
x1=(40000)/(1+30.48)
Rif=(x1*5000)/(x1+5000) //in ohm
disp(Rif,"  Rif(ohm) = hie || (RB / 1-Av) =")
format(6)
Avf=(-30.48*1013.172)/(600+1013.172)
disp(Avf,"  Avf = Vo/Vs = Av*Rif / RS+Rif =")
Rof=(40000/600)*(5600/80) //in ohm
x2=Rof*10^-3 //in k-ohm
disp(x2,"  Rof(k-ohm) = (RB / RS) * (RS+hie / hfe) =")
Roff=(4.666*2)/(6.666) //in k-ohm
disp(Roff,"  R''of(k-ohm) = Rof || RL =")