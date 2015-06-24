R1=0.25;X1=0.5;X2=0.5;
R2=0.2;Xm=30;V=460;
N=1740;F=60;P=4;Phase=3;No=1800;

V1=V/sqrt(Phase)

Z1=(R1+%i*X1)+(%i*Xm*(R2+%i*X2)/(R2+%i*30.5))
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Rth,Angle]=rect2polar(0.44,0.99)
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(Rth,Angle)
 
X=a+%i*b

Ist=(V1/X)

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ist,Angle]=rect2polar(99.56,-224.0)
 
Wsy=(1800/F)*2*%pi

Vth=(V1*%i*Xm)/(R1+%i*30.5)
 
Vth=265.3;
 
Zth=%i*Xm*(%i*R1+%i*X1)/(R1+%i*30.5)
 
Zth=(%i*Xm*(R1+%i*X1))/(R1+%i*30.5)
 
Rth=0.24;

Xth=0.49;

a=Vth^2/((Rth+R2)^2+(Xth+X1)^2)

Tst=((Phase/Wsy)*a*R2)
 
S=(No-N)/No
 
FL=R2/S

Z1=(R2+%i*X2)+((%i*Xm)*(FL+%i*X2))/(FL+%i*30.5)

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[c,d]=rect2polar(5.78,2.09)

function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[z,y]=polar2rect(c,d)

X=z+%i*y

Ifl=V1/X

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[Ifl,Ang]=rect2polar(40.63,-14.6)

 
Ratio=Ist/Ifl

Pf=cos(%pi*19.8/180)
 
z=Vth^2/((Rth+FL)^2+(Xth+X2)^2)
 
T=(Phase/Wsy)*z*FL

Pag=T*Wsy
  
P2=S*Pag
 
Pmech=(1-S)*Pag
 
Pout=Pmech-1700
 
Pinp=Phase*V1*Ifl*Pf

EFFMotor=Pout/Pinp*100
  
  EFFint=(1-S)*100
  
  Stmax=R2/(Rth^2+(Xth+X2)^2)^0.5
  
  X=Rth+(Rth^2+(Xth+X2)^2)^0.5

  
  Tmax=(Phase/2*Wsy)*X
  
  T=Tmax/T
  
  
  
  
  
  
