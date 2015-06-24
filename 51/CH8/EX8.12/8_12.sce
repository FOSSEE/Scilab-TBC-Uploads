clc;
clear;
roughness=0.0005;//ft
Q=2;//(ft^3)/sec
pd=0.5;//psi; where pd=pressure drop
l=100;//ft
d=0.00238;//slugs/(ft^3)
vis=3.74*(10^(-7));//lb*sec/(ft^2)
x=Q/(%pi/4);//where x =V*(D^2)
//energy equation with z1=z2 and V1=V2
y=l*d*(x^2)*0.5/(pd*144);//where y=(D^5)/f
f=0.027;//using reynolds number, roughness and moody's chart
D=(y*f)^(1/5);//ft
disp("ft",D,"The diameter of the pipe should be =")
q=0.01:0.01:3;
count=1;
for i=0.01:0.01:3
    dia(count)=((l*d*((i/(%pi/4))^2)*0.5/(pd*144))*f)^(1/5);
    count=count+1;
end
plot2d(q,dia,rect=[0,0,3,0.25])
xtitle("D vs Q","Q, (ft^3)/sec","D, ft")