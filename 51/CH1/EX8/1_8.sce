clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\1.8data.sci");
//h=(2*st*cos(x)/(sw*R))
//where st= nsurface tension, x= angle of contact, sw= specific weight of liquid, R= tube radius
st= 0.0728;//N/m
sw=9.789;//kN/m^3
x=0;
R=(2*st*cos(x))/(sw*1000*h/1000);//m
D=2*R*1000;//mm
disp("mm",D,"minimum required tube diameter= ")
h=0.1:0.1:2;
for i=0.1:0.1:2
    R=(2*st*cos(x))/(sw*1000*i/1000);
    dia(i*10)=2*R*1000;
end

plot2d(h,dia,rect=[0,0,2,100])
xtitle("D vs h","h, mm", "D, mm")
