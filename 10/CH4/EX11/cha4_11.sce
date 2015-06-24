V=480;RPM=1800;
Ia=16.5;Ra=0.0874;
Ka=0.33;
Angle=30;N=1800;

Vp=(V/sqrt(3))
 
Vt=(3*sqrt(6)*Vp)/(%pi)
 
Ea=Vt-(Ia*Ra)
 
No=(Ea/Ka)
 
A=cos(%pi*Angle/180)

Vt1=Vt*A
 
Ea1=Vt1-(Ia*Ra)
 
No1=Ea1/Ka

Eaf=Ka*N
 
Vtf=Eaf+(Ia*Ra)
 
 Angle=Vtf/Vt
 
 a=acos(Angle)
 
 Alfa=a*180/%pi

Eas=Vtf-(Ia*Ra)
 
Nos=Eas/Ka
  
SpeedReg=(Nos-N)/N*100
