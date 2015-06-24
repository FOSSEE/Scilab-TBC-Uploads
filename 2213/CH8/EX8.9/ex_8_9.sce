//Example 8.9;power input and tractive efforts
clc;
clear;
close;
ia=350;//A
ib=305;//A
v=600;//V
pa=(v*ia)/1000;//kW
pb=(v*ib)/1000;//kW
disp("(i) When motors are connected in parallel and train speed is 40kmph")
disp(pa,"power input to motor A is,(kW)=")
disp(pb,"power input to motor B is,(kW)=")
fta=1625;//kg
ftb=1480;//kg
disp(fta,"tractive effor of motor A is,(kg)=")
disp(ftb,"tractive effor of motor B is,(kg)=")
disp("(ii) When motors are connected in series and current is 400A")
rm=0.08;//ohm
i=400;//A
eba=v-(i*rm);//V
abb=eba;//V
va=38.5;//V
vb=36.7;//V
vx=((v-2*(i*rm))*((va*vb)/(va+vb)))/eba;//
Va=((eba/va)*vx)+(i*rm);//V
Vb=((eba/vb)*vx)+(i*rm);//V
pa1=(Va*i)/1000;//kW
pb1=(Vb*i)/1000;//kW
disp(pa1,"power input to motor A is,(kW)=")
disp(pb1,"power input to motor B is,(kW)=")
fta1=1960;//kg
ftb1=2060;//kg
disp(fta1,"tractive effor of motor A is,(kg)=")
disp(ftb1,"tractive effor of motor B is,(kg)=")
