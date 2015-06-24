//Example 6.2// ratio error and phase angle
clc;
clear;
dv=0;//as secondary winding power factor is unity
Io=1;//in ampere
Knom=200;//nominal ratio
Re=1.1;//external burden in ohms
Pf=0.45;//power factor
d= acosd(Pf);//
alpha=90-d;//in degrees
Is=5;//in ampere
Rs=Knom*Is;//
Kact= Knom+((Io/Is)*sind(dv+alpha));//actual transformation ratio
Re= ((Knom-Kact)/Kact)*100;//ratio error in percentage
pa=((180/%pi)*(Io*cosd(dv+alpha))/Rs);//phase angle in degree
pa1=pa-round(pa);
pa2=pa*3600;//
pa3= round(pa2);
pa4= pa3-180;//
pa5=pa2-pa4;//
disp(Re,"ratio error in percentage is")
disp("the phase angle is "+string(round(pa5/60))+" min and "+string(pa4)+" seconds" );

