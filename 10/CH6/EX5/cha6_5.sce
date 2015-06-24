V=460;Phase=3;N=1200;Hp=125;
Ra=0.078;Xal=0.15;Xar=1.85;Nre=28.2;Nse=28.2;

Ia=sqrt(Phase)*V
 
Ia=121.4
 
Vt=V/sqrt(Phase)

Ea=Vt-(Ia*Ra)
 
Xs=Xal+Xar

function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction 

[x1,y1]=polar2rect(Ea,0)
 
[x2,y2]=polar2rect(Xs,90)
 
X1=x1+%i*y1
 
X2=x2+%i*y2
  
Im=X1/X2

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Im,Angle1]=rect2polar(7.84D-15,-128.0)
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[x1,y1]=polar2rect(Im,Angle1)
 
[x2,y2]=polar2rect(Ia,0)
 
X1=x1+%i*y1
 
X2=x2+%i*y2
 
X=X1-X2
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[a,b]=rect2polar(-121.4,-128)
 
n=sqrt(2)/Phase*Nre
 
If=(a/n)*(Xs/Xar)
