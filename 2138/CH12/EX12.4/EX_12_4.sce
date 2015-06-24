//Example 12.4 // reading
clc;
clear;
close;
ni=74.6;//efficiency
Mo=40;//HP OF MOTOR
mo=Mo*ni;//output of motor in watts
mi=(mo*100)/(ni*1000);//input of motor in kW
tw=40;//total in kW
pf=0.8;//power factor
theta=acosd(pf);//in degree
v=tand(theta);//
dw=(v*tw)/(sqrt(3));//
w1=(tw+dw)/2;//FIRST READING IN kW
w2=tw-w1;//second reading in kW
disp(w1,"first reading in kW")
disp(w2,"second reading in kW")
