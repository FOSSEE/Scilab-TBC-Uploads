Power=120000;;Phase=3;
V=230;Pri=2300;Sec=230;Z=0.012+%i*0.016;Pf=0.85;

Is=Power/(sqrt(Phase)*V)
 
I2=Is/sqrt(Phase)
 
a=Pri/V
 
I1=I2/a
 
 Zeq=(Z)*10^2
 
 a=acos(Pf)
 
 Deg=(a*180)/%pi
 
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[a,b]=polar2rect(Pri,0)
 
A=a+%i*b
  
function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[c,d]=polar2rect(I1,-Deg)
 
A1=c+%i*d
 
A2=A1*(Zeq)

A3=A2+A
 
V1=2332.4;

PriVol=sqrt(Phase)*V1

VR=(V1-Pri)/Pri*100
