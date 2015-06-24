clc;
clear;
d=1.18*1000;//kg/m^3
vis=0.0045;//Ns/m^2, viscosity
Q=12;//ml/sec
dia1=4;//mm
l=1;//m
dia2=2;//mm
V=Q/(1000000*%pi*((dia1/1000)^2)/4);//mean velocity, m/sec
Re=(d*V*dia1/1000)/vis;
disp(" is well below critical value of 2100 so flow is laminar.",Re,"a) The Reynolds number ")
pdiff=(8*vis*(l)*(12/1000000)/(%pi*(dia1/2000)^4))/1000;//kPa
disp("kPa",pdiff,"The pressure drop along a 1 m length of the tube which is far from the tube entrance so that the only component of velocity is parallel to the the tube axis=")
//for flow in the annulus
V1=Q/(1000000*%pi*(((dia1/1000)^2)-((dia2/1000)^2))/4);//mean velocity, m/sec
Re1=d*((dia1-dia2)/1000)*V1/vis;
disp(" is well below critical value of 2100 so flow is laminar.",Re1,"b) The Reynolds number ")
r1=dia1/2000;
r2=dia2/2000;
pdiff1=((8*vis*(l)*(12/1000000)/(%pi))*((r1^4)-(r2^4)-((((r1^2)-(r2^2))^2)/(log(r1/r2))))^(-1))/1000;//kPa
disp("kPa",pdiff1,"The pressure drop along a 1 m length of the symmetric annulus =")

rratio=0.001:0.001:0.5;
count=1;
for i=0.001:0.001:0.5
    pratio(count)=1/((i^4)*((1/(i^4))-1-((((1/(i^2))-1)^2)/log(1/i))));
    count=count+1;
end
plot2d(rratio,pratio,rect=[0,0,0.5,8])
xtitle("ri/ro vs pdiff(annulus)/pdiff(tube)","ri/ro","pdiff(annulus)/pdiff(tube)")