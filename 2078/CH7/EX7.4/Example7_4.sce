//Exa 7.4
clc;
clear;
close;
format('v',5);
//Given data :
Ph=3;//phase
V=132;//kV
f=50;//Hz
d=3;//meter
d=d*100;//in cm
go=21.21;//kV/cm : assumed
mo=0.85;//assumed 
del=0.95;//assumed air density factor
Vdo=V/sqrt(3);//kV
//Formula : Vdo=go*del*mo*r*log(d*100/r);//in kV
//r*log(d/r)=Vdo/go/del/mo: solving
//Implementing Hit & Trial method
for r=0.1:.1:2
    if floor(r*log(d/r))==floor(Vdo/go/del/mo) then
        disp(2*r,"Minimum Diameter of conductor by Hit & Trial method(cm) : ");
        break;
    end
end
