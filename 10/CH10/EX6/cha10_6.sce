V=300;I=540;Angle=45;

t0=0:0.1:%pi;
 
t=0;
integrate('540*sin((x-45*%pi/180))','x',t,t0)/%pi

 Is=242.89;
 
Ps=V*I  
 
Vo1=(4*V)/(%pi*sqrt(2))

Pout=Vo1*Io/sqrt(2)*cos(%pi*Angle/180)
 
