V=120;F=60;Pole=4;Zm=1.5+4.0;Za=3+6;
Xa=6;Xm=4;Rm=1.5;Ra=3;

Ra=(Xa/Xm)*(Rm+sqrt(18.25))
 
C=(2*%pi*F)*(Xa+(Ra*Rm)/(Xm+sqrt(18.25)))
 
a=((-Xm*Ra)+(sqrt(18.25)*sqrt(13.2)))
 
Xc=Xa+(a/Rm)
 
Ia=V/(3+%i*6)

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is,Angle]=rect2polar(8,-16)

Im=V/(1.5+%i*4)
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is1,Angle1]=rect2polar(9.86,-26.3)
 
Alfa=Angle1-Angle
 
Ts=Is*sin(%pi*6.01/180)
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(Is1,Angle1)
 
X=a+%i*b

C=1/C*10^6

a=((-Xm*Ra)+(sqrt(18.25)*sqrt(13.2)))
 
Xc=Xa+(a/Rm)
 
C=10^6/(2*%pi*F*Xc)
  
Ia=V/(3+%i*6)
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is,Angle]=rect2polar(8,-16)

Im=V/(1.5+%i*4)
  
[Is1,Angle1]=rect2polar(9.86,-26.3)

Alfa=Angle1-Angle

Ts=Is*sin(%pi*6.01/180)
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(Is1,Angle1)
 
X=a+%i*b
 
[c,d]=polar2rect(Is,Angle)

X1=c+%i*d
 
X2=X+X1
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[I,Angle]=rect2polar(17.86,-42.3)
 
Ia=V/(Ra+%i*Xa)
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ia,Angle]=rect2polar(9.3,-6.4)
  
Alfa=69.33-34.53

Ts=Ia*sin(%pi*Alfa/180)
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[Is,Angle]=polar2rect(Ia,Angle)
 
[Is1,Angle1]=polar2rect(28.1,-69.44)
 
X=Is+%i*angle

X1=Is1+%i*Angle1
 
X2=Is+%i*Angle

X=X1+X2
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is,Angle]=rect2polar(19.1,-32.7)

Xc=10^6/(2*%pi*F*405)

Ia=V/(Ra+(%i*6+%i*6.55))
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is,Angle]=rect2polar(2.16,-9.04)
 

Ia=V/(Ra+(%i*6-%i*6.55))
 
[Is,Angle]=rect2polar(38.6,7.09)

Alfa=69.44+Angle

Ts=Is*sin(%pi*Alfa/180)
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[Is,Angle]=polar2rect(28.1,-69.44)
 
[Is1,Angle1]=polar2rect(39.34,10.4)

X1=Is+%i*Angle
 
X2=Is1+%i*Angle1

X=X1+X2
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is,Angle]=rect2polar(48.56,-19.20)
 
Ia=V/(Ra+(%i*Xa-%i*Xc))

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[I,Angle]=rect2polar(23.9,19.6)

Alfa=69.44+39.5

Ts=I*sin(%pi*Alfa/180)
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[Is,Angle]=polar2rect(28.1,-69.44)
 
[Is1,Angle1]=polar2rect(I,39.35)
 
X=Is+%i*Angle
 
X1=Is1+%i*Angle1
 
X2=X+X1
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[I,Angle]=rect2polar(33.7,-6.7)
