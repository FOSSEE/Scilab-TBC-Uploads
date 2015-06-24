Pri=1330;Sec=230;Zl=0.12+%i*0.25;Phase=3;V=230;
Z=0.8+%i*5;Power=27;
Zz=0.003+%i*0.015;Pf=0.9

A=(Pri/Sec)^2*(Zl)

Req=4.01;
 
Xeqh=8.36;
 
a=(sqrt(Phase)*Pri)/V
 
Reql=0.8;
 
Xeql=5;
Rr=0.003;
 
Xx=0.015;
 
R=(Reql+Req)*(1/10^2)+Rr

X=(Xeql+Xeqh)*(1/10^2)+Xx
 
Vl=V/sqrt(Phase)
 
Il=(Power*10^3)/(Phase*133)
  
Angle=-acos(%pi*Pf/180)
  
