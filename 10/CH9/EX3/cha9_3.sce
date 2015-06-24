Xd=0.9;Vt=1;Ia=1;Xd1=0.4;Xd2=0.2;Ta=0.2;
Td1=4;Td2=0.6;t=0.1;

function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[x,y]=polar2rect(Ia,-25.8)

X=x+%i*y

[x1,y1]=polar2rect(Xd,90)

X1=x1+%i*y1

A=Vt+(X*X1)

function[x,y]=polar2rect(r,theta)
x=r*cos(theta*%pi/180);
y=r*sin(theta*%pi/180);
endfunction  

[Ei,Angle]=rect2polar(1.39,0.81)

[x,y]=polar2rect(Ia,-25.8)

X=x+%i*y

[x2,y2]=polar2rect(Xd1,90)

X2=x2+%i*y2

[Ei2,Angle1]=rect2polar(1.17,0.36)

[x,y]=polar2rect(Ia,-25.8)

X=x+%i*y

[x3,y3]=polar2rect(Xd2,90)

X3=x3+%i*y3

[Ei2,Angle2]=rect2polar(1.08,0.10)

Idc=sqrt(2)*(Ei2/Xd2)

Td1=(Xd1/Xd)*Td1

Td2=(Xd2/Xd1)*Td2

Isc=sqrt(2)*(Td1+1.29*%e^(-0.562*0.1)+2.42*%e^(-3.3*0.1))+7.78*%e^(-5*0.1)

 