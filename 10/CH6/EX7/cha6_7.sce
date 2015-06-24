Vt=1;Ia=1;Xd=0.8;Xq=0.4;Loss=0.15;Angle=36.9;

a=cos(%pi*Angle/180)

b=sin(%pi*Angle/180)

TanDeg=(Vt*Xq*a)/(Vt+(Ia*Xq*b))
 
z=atan(TanDeg)
 
Deg=(z*%pi/180)
 
Deg=(z*180/%pi)

Angl=Angle-Deg
 
Id=Ia*sin(%pi*Angl/180)
 
Iq=Ia*cos(%pi*Angl/180)
 
Ef=(Vt*cos(%pi*Deg/180))-(Id*Xq)
 
Pf=((Vt*Ef)/Xd)*sin(%pi*Deg/180)
 
Pr=(Vt^2*(Xd-Xq)/(2*Xd*Xq))*sin(%pi*45.6/180) 
 
Pout=Vt*Ia*a
 
Prmax=(Vt^2*(Xd-Xq))/(2*Xd*Xq)
 
v=asin(Loss/Prmax)/2
 
Deg1=(v*180/%pi)
 
Id=Vt*cos(%pi*Deg1/180)/Xd
 
Iq=Vt*sin(%pi*Deg1/180)/Xq
 
Ia=(Id^2+Iq^2)^(1/2)
 
 Ang=atan(Id/Iq)
 
 Ang=(Ang*180/%pi)
 
Phi=Ang+Deg1
 
Pf=cos(%pi*Phi/180)
