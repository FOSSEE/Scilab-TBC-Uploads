clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\12_6data.sci");
//energy equation between a point on surface of lake and the nozzle outlet
//z0=(V1^2)/(2*32.2) + hL
//from continuity equation, V=(A1*V1/A)=((D1/D)^2)*V1
//neglecting minor losses, 
//z0=(1+(f*l/D)*((D1/D)^4))*(V1^2)/(2*32.2)
//Wshaft=d*Q*u*(U-V1)*(1-cos(B))
//The maximum power occurs at U=V1/2 and dWshaft/dD1=0
a=(2*32.2*z0)^0.5;//113.5
b=f*(l/(D/12))*(1/(D/12))^4;//152
c=a*%pi*1.94*(1-cos(B*%pi/180))/4;//323
d=(c*a*a/4);//1.04*(10^6)
//by the above conditions, and applying Q=(%pi*(D1^2)*V1/4)
D1=(1/(2*b))^(1/4);//ft
disp("ft",D1,"The nozzle diameter for maximum power output=")
Wshaft=-((d*D1^2)/(1+(b*D1^4))^(3/2))/550;//hp
disp("hp",Wshaft,"The maximum power output=")
V1=a/(1+(b*(D1^4)))^0.5;//ft/sec
omega=(V1/(2*R))*60/(2*%pi);//rpm
disp("rpm",omega,"The angular velocity of the rotor=")
