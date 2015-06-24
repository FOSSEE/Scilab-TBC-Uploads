//Example 1.10://MAGNITUDE AND LIMITING ERROR
clc;
clear;
close;
disp("parralel resistance case")
r1=40;//ohms
er1=5;//percentage error
r2=80;//ohms
er2=5;//percentage error
r3=50;//ohms
er3=5;//percentage error
rp=((r1*r2*r3)/(r1*r2+r2*r3+r3*r1));//ohms
Y=(r1*r2+r2*r3+r3*r1);//ohms
ex=er1+er2+er3;//percentage error
ey1=er1+er2;//
ey2=er2+er3;//
ey3=er3+er1;//
y=(((r1*r2*ey1)/Y)+((r2*r3*ey2)/Y)+((r3*r1*ey3)/Y));//error
mer=(y+ex)*rp;//
disp(rp,"magnitude of resistance in ohms is")
disp(mer/100,"limiting error in ohms is")
disp((y+ex),"percentage error (%)")
disp("series resistance case")
rs=r1+r2+r3;//ohms
er=(((r1/rs)*er1)+((r2/rs)*er2)+((r3/rs)*er3));//
mer1=(er/100)*rs;//ohms
disp(rs,"magnitude of resistance in ohms is")
disp(er,"percentage error (%)")
disp(mer1,"limiting error in ohms is")
