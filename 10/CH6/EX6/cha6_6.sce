V=11;Phase=3;F=60;IncExe=150;DecExe=50;Xs=10;
Power=80000;

Vt=V/sqrt(Phase)
 
Vt=Vt*1000
 
Ef=IncExe/100

Ef1=DecExe/100
  
Ia=(Vt-(Ef*Vt))/(Xs)
 
Pf=cos(90/90*%pi/2)
 
Ia1=(Vt-(Ef1*Vt))/(Xs)
 
Pf1=cos(90/90*%pi/2)
 
Ia=Power/(Phase*Vt)
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[x1,y1]=polar2rect(4.2,0)
 
[x2,y2]=polar2rect(10,90)
 
X1=x1+%i*y1

X2=x2+%i*y2
 
X=X1*X2

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[a,b]=rect2polar(Vt,42)
