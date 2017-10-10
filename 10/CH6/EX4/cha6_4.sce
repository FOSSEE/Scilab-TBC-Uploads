V=208;F=60;Phase=3;Power=3000;Xs=8;

Vt=V/sqrt(Phase)
 
Ia=Power/(Phase*Vt)
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  
[x1,y1]=polar2rect(120,0)

[x2,y2]=polar2rect(8.33,0)
 
[x3,y3]=polar2rect(8,90)
  
X=x1-(x2*x3)

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ef,Angle]=rect2polar(120,-66.64)
 
Pmax=(Phase*Ef*Vt)/Xs
 
Ws=(1800/F)*2*%pi

Tmax=Pmax/Ws