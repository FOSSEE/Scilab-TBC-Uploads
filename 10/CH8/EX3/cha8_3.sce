Rw=1;Lw=30;I=3;TimeOn=2;RF=0.0675;
StepRate=300;Turns=100;TimeOff=1;
PeakI=3;

R=Lw/TimeOn
 
Rext=R-TimeOff
 
Prext=(I^2*Rext)
  
Vs=I*R

Rext=R-Rw
 
R1=Lw/TimeOff
 
Rf=R1-R

Energy=(1/2*Lw*I^2)
  
Power=Turns*Rf
  
Power=Turns*RF
 
Vc=V+(PeakI*R)
