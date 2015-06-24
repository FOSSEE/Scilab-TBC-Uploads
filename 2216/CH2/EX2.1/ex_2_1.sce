//Example 2.1 // NA ,angles and pulse broadning
clc;
clear;
close;
format('v',9 )
disp("part (a)")
n1=1.5;//core refrative index
n2=1.48;//claddin refractive index
a=100/2;//radius in micro meter
na=1;//air refrative index
NA=sqrt(n1^2-n2^2);//numerical aperture
disp(NA,"numerical aperture is")
disp("part (b)")
am=(asind(NA));//
tm=asind(NA/n1);//
tc=asind(n2/n1);//
disp(am,"angle in degree is (αm)")
disp(tm,"angle in degree is (Om)")
disp(tc,"angle in degree is(Φc)")
disp("part (c)")
c=3*10^8;//speed of light in m/s
dtl=((n1/n2)*(n1-n2)/c);//pulse broadning per unit length
disp(dtl,"pulse broadning per unit length in sm^-1")
