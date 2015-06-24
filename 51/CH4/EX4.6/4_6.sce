clc;
clear;
pratet=-8;//dollars/hr
pratex=0.2;//dollars/mi
exec("C:\Program Files\scilab-5.3.0\bin\TCP\4_6data.sci");
u=(-pratet)/pratex;
disp("mi/hr",u,"The delivery speed=")