V=14000;Phase=3;Ra=0.07;V1=10;Is=490;Pf=0.8;
If=200;Vl=18000;

Vb=V/sqrt(Phase)
 
Ib=(V1*10^6)/(sqrt(Phase)*V)
 
Zb=Vb/Ib
 
Zsun=(Vl/sqrt(3))/Is
 
Xsun=sqrt(Zsun^2-Ra^2)
 
Xsun=Xsun/Zb
 
Zssa=(V/sqrt(3))/Is

Xssa=Zssa/Zb

a=cos(0.8)
 
Deg=a*180/%pi
 
Zs=Zssa/Ra
 
Zs=atan(Zs)

Angle=Zs*180/%pi

function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(1,0)
 
X1=a+%i*b

[c,d]=polar2rect(1,-Deg)
 
X2=c+%i*d
 
[e,f]=polar2rect(0.84,Angle)
 
X3=e+%i*f
 
X=X1+(X2*X3)
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction
 
[I,Angle]=rect2polar(1.54,0.64)
 
Ef=I*V
 
If=I*If

 
 