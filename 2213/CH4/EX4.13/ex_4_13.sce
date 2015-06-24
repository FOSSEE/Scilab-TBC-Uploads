//Example 4.13//illumination
clc;
clear;
close;
format('v',5 )
p=60;//
CP=200;//
h=6;//in meter
d=10;//diamter in meter
mil=CP/(h)^2;//maximum illumination in lux
disp("part (a). ")
disp(mil," illumination at the centre of the area without reflector in lux")
mal=mil*(h/sqrt(h^2+(d/2)^2))^3;//minimum illumination in lux
tl=4*%pi*CP;//total lumens 
ts=(p/100)*tl;//total lumens reaching the surface
A=%pi*(d/2)^2;//total surface area in m^2
alf=ts/A;//average illumination with reflector
x=sqrt(h^2+(d/2)^2);//
y=h/x;//
om=2*%pi*(1-y);// in steradians
tfr=CP*om;//total flux reaching the surface
alwr=tfr/A;//average illumination without reflector
disp("part (b). ")
disp(mal," illumination at the edge of the area without reflector in lux")
disp(alf,"average illumination with reflector in lux")
disp(alwr,"average illumination without reflelctor in lux")
//with the reflector the illumintaion at the edge and at the end will be the same since the reflection directs the light uniformity on the surface
