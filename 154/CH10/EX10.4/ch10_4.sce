clc
disp("Problem 10.4")
printf("\n")

//For V1
Ro1=25
Theta1=143.13
//For V1
Ro2=11.2
Theta2=26.57
//We need to find V1/V2
//Let V=V1/V2
Vmag=(Ro1/Ro2) 
Vph=Theta1-Theta2
x=Vmag*cos((Vph*%pi)/180);
y=Vmag*sin((Vph*%pi)/180);
z=complex(x,y)
//Let V1+V2=V12
x1=Ro1*cos((Theta1*%pi)/180);
y1=Ro1*sin((Theta1*%pi)/180);
z1=complex(x1,y1)
x2=Ro2*cos((Theta2*%pi)/180);
y2=Ro2*sin((Theta2*%pi)/180);
z2=complex(x2,y2)
V12=z1+z2
[R,Theta]=polar(V12)
printf("V1/V2=%0.2f+i*%3.2f \nV1+V2=%3.2f(%3.2f deg)",x,y,R,(Theta*180)/%pi)