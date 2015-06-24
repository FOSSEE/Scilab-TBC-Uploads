clc
clear
disp('example 15.5')
a=100 //area
spd=0.7 //sun light power density
m=1000  //weight of water collector
tp=30  //temperature of water
th2=60  //angle of incidence
cp=4186 //specific heat of water
sp=spd*cosd(th2)*a //solar power collected by collector
ei=sp*3600*10^3  //energy input in 1 hour
temp=ei/(cp*10^3)
tw=tp+temp
printf("solar power collected by collector %dkW \nenergy input in one hour %e J \n rise in temperature is %.1f`C \n temperature of water %.1f`c",sp,ei,temp,tw)
