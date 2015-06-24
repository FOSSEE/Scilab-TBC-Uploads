//example 13.3
clc; funcprot(0);
phi=12*%pi/180;
Ds=0.8;
Z=5;
sigmaT=450;
U=%pi*Ds*Z*sigmaT*tan(phi);
deff('y=f(D)','y=1202-450*6.14/1.25*3.14/4*(D^2-0.8^2)');
[x]=fsolve(1,f);
Db=x;
disp(Db,"diameter of bell in m");
//partb
D=600;
cu=450;
Nc=6.14;
FS=cu*Nc*%pi/4*(Db^2-Ds^2)/(U-D);
if FS>2 then
    disp("the structure is compatible with safety measures");
end
//check bearing capacity
L=D+300;//dead+live load
Dp=L/%pi*4/Db^2;//downward pressure
FS=2763/Dp;
if FS>3 then
    disp("the structure is safe in bearing ");
end

