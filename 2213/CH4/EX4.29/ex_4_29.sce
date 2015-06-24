//Example 4.29//number of lamps
clc;
clear;
close;
format('v',6)
el=50;//in lux
df=1.3;//depreciation factor
uf=0.5;//utiliazation factor
l=30;// in meters
b=12;// in meters
a=l*b;//arean in m^2
glr=(a*el*df)/(uf);//gross lumens required
watt=[100,200,300,500,1000];
lum=[1615,3650,4700,9950,21500];//
for i=1:5
    n(i)=glr/(lum(i));//
    disp("if "+string(watt(i))+" watt lamps are used then number of lamps required is "+string(round(n(i)))+" ")

end
