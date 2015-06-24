clc
clear
disp("example 10_15")
c1=0.002;b1=0.86;a1=20
c2=0.004;b2=1.08;a2=20
c3=0.0028;b3=0.64;a3=36
fc=500
maxl=120
minl=36
tl=200
d=[1 1 1;2*fc*c1 -fc*2*c2 0;0 -fc*2*c2 fc*2*c3]
p=[tl;fc*(b2-b1);fc*(b2-b3)] 
pp=inv(d)*p //matrix inversion method
printf("\nloads on generaating station by economic creatirian method is %dMW,%dMW,%dMW",pp(1),pp(2),pp(3))
for i=1:3
    if pp(i)<minl then
        pp(i)=minl
        printf("\nload on generating station %d is less then minimum value %dMW \n so it is made equal to minimum value %dMW",i,minl,minl)
        e=[1 1;d(2,1) -d(3,3)]
        q=[(tl-pp(i));-p(i)]
        qq=inv(e)*q //matrix inversion method
printf("\nloads on generaating station by economic creatirian method is %.3fMW,%.3fMW",qq(1),qq(2))
    end
    if pp(i)>maxl then
        pp(i)=maxl
        printf("\nload on generating station %d is greater than maximum value %dMW \n so it is made equal to mmaximum value %dMW",i,maxl,maxl)
        e=[1 1;d(2,1) -d(3,3)]
        q=[(tl-pp(i));-p(i)]
        qq=inv(e)*q //matrix inversion method
printf("\nloads on generaating station by economic creatirian method is %.2fMW,%.2fMW",qq(1),qq(2))
    end
end
