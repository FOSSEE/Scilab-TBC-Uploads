clc
clear
disp("example 10.17")
//given
a1=450;b1=6.5;c1=0.0013
a2=300;b2=7.8;c2=0.0019
a3=80;b3=8.1;c3=0.005
tl=800//total load
ma(1)=600
mi(1)=100
ma(2)=400
mi(2)=50
ma(3)=200
mi(3)=50
d=[1 1 1;2*c1 -2*c2 0;0 -2*c2 2*c3]
p=[tl;(b2-b1);(b2-b3)] 
pp=inv(d)*p //matrix inversion method
printf("\nloads on generaating station by economic creatirian method isp1=%fMW,p2=%fMW,p3=%fMW",pp(1),pp(2),pp(3))
for i=1:3
    if pp(i)<mi(i) then
        pp(i)=mi(i)
    end
    if pp(i)>ma(i) then
        pp(i)=ma(i)
    end
end
pp(2)=tl-pp(1)-pp(3)
printf("\nloads on generating station under critical conditions p1=%dMW p2=%dMW p3=%dMW",pp(1),pp(2),pp(3))