//Example 8.7: speed and tractive effort
clc;
clear;
close;
Ia=[60;120;180;240;300;360];// in amperes
sp1=[80;50;45;42;38;35];//in kmph
tf1=[1.7;5;10;14;16;20];//innewtons
d1=0.85;//in meters
d2=0.9;//in meters
y1=71/21;//
y2=74/19;//
for i=1:6
    V(i)=((d2/d1)*(y1/y2))*sp1(i);//in kmph
    tf2(i)=((d1/d2)*(y2/y1))*(tf1(i));//in newtons
    disp("for armature current "+string(Ia(i))+" amperes  , speed is "+string(V(i))+" kmph and tractive effor in thousand newtons is "+string(tf2(i))+ "")
end
