function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction
V=208;Poles=4;F=60;Phase=3;Vol=5000;Xs=8;

Vt=V/sqrt(Phase)
  
Ia=Vol/(sqrt(Phase)*V)
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  
[x1,y1]=polar2rect(Vt,0)
 
[x2,y2]=polar2rect(Ia,-36.9)
 
[x3,y3]=polar2rect(8,90)
 
X1=x1+%i*0
 
X2=x2+%i*0
 
X2=x2+%i*y2
 
X3=x3+%i*y3
 
X=X1+(X2*X3)
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ef,Angle]=rect2polar(186.7,88.7)

Newvol=1.2*Ef
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[x1,y1]=polar2rect(Newvol,21)

[x2,y2]=polar2rect(Vt,0)
 
[x3,y3]=polar2rect(Xs,90)
 
X1=x1+%i*y1
 
X1=x2+%i*y2

X1=x3+%i*y3

X=(X1-X2)/X3
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ia,Angle1]=rect2polar(11.11,-13.93)

Pf=cos(%pi*51.5/180)

a=sin(%pi*51.5/180)
  
ReactiveKva=(Phase*Vt*Ia*a*10^-3)
   
Pmax=(Phase*Ef*Vt)/Xs
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[x1,y1]=polar2rect(206.9,90)
 
[x2,y2]=polar2rect(120,0)
 
[x3,y3]=polar2rect(8,90)
 
X1=x1+%i*y1
 
X2=x2+%i*y2

X3=x3+%i*y3
 
X=(X1-X2)/X3

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ia,Angle2]=rect2polar(25.8,15)

tan=Vt/Ef

Ang=tan*180/%pi

Pf=cos(%pi*Ang/180)
 