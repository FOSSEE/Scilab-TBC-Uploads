Fullload=75;Ia=4.55;Vl=2200;

Fulload=Fullload/100
 
Ih=Fullload*Ia
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[x1,y1]=polar2rect(Vl,0)
 
[x2,y2]=polar2rect(35.46,-53.13)
 
[x3,y3]=polar2rect(106.73,36.87)
 
X1=x1+%i*y1

X2=x2+%i*y2
 
X3=x3+%i*y3
 
X=X1+X2+X3
 
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[V,Angle]=rect2polar(2306.5,35.67)
 
VolReg=(V-Vl)/Vl*100
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  
[x1,y1]=polar2rect(Vl,0)
 
[x2,y2]=polar2rect(35.46,53.13)

[x3,y3]=polar2rect(106.73,143.13)
 
X1=x1+%i*y1
 
X2=x2+%i*y2
 
X3=x3+%i*y3

X=X1+X2+X3
  
function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[V1,Angle1]=rect2polar(2135.89,92.4)
 
VolReg=(V1-Vl)/Vl*100
