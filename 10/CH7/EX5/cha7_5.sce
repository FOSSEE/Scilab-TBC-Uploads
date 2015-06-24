V=120;F=60;X1m=2;R1m=1.5;R2=1.5;
X1a=2;R1a=1.5;X2=2;Xmag=48;C=30;a=1;
Z1m=1.5;Zb=0.69+%i*0.98;Z1a=2.5;
Xc=%i*2-%i*88.4;Ra=2.5;

Xc=10^6/(2*%pi*F*C)
 
Zb
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[x,y]=rect2polar(0.69,0.98)
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(V,0)
 
X=a+%i*b

z=(Z1m+%i*2+2*(Zb))
 
Im=X/z
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is,Angle]=rect2polar(14.41,-19.81)

y=(Z1a+Xc+2*(Zb))
 
Ia=X/y

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is1,Angle1]=rect2polar(0.065,1.41)
 
Wsy=(1800*2*%pi)/F
  
Ts=2*(Is)*(Is1)*2*0.69*sin(%pi*141.1/180)/Wsy
 
Zm=Z1m+%i*2+2*(Zb)
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ip1,Angle1]=rect2polar(2.88,3.96)
  
Za=Ra+%i*2+2*(Zb)
 
R=3.88;Im=3.96;
Xc=Im-((Im*R-4.9*sqrt(26.22))/2.88)

c=10^6/(2767.34)

Cs=c-C
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[v,a]=polar2rect(V,0)
 
X=v+%i*a

R=3.88;Im=3.96;Xc=7.34;

a=R+(%i*Im-%i*Xc)

z=X/a

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Is1,Angle1]=rect2polar(17.5,15.3)
 
Is=24.4;Angle=-53.4;
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(Is,Angle)
 
X1=a+%i*b
 
[c,d]=polar2rect(Is1,Angle1)

X2=c+%i*d
 
X=X1+X2

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[z,y]=rect2polar(32.04,-4.28)
 
a=sin(%pi*95/180)

Ts=2*(Is1)*(Is)*2*0.69*a/Wsy

T=Ts/z
